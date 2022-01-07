
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_9__ {scalar_t__ size; scalar_t__ status; TYPE_2__* module; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_10__ {scalar_t__ cur_offset; int reconnecting; int persistent; int header_list; } ;
typedef TYPE_2__ VC_CONTAINER_IO_MODULE_T ;


 int LOG_DEBUG (int *,char*) ;
 int LOG_ERROR (int *,char*,...) ;
 scalar_t__ VC_CONTAINER_ERROR_CORRUPTED ;
 scalar_t__ VC_CONTAINER_ERROR_EOS ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int io_http_close_socket (TYPE_2__*) ;
 scalar_t__ io_http_get_content_length (int ) ;
 scalar_t__ io_http_open_socket (TYPE_1__*) ;
 size_t io_http_read_from_net (TYPE_1__*,char*,size_t) ;
 scalar_t__ io_http_read_response (TYPE_1__*) ;
 scalar_t__ io_http_send_get_request (TYPE_1__*,size_t) ;

__attribute__((used)) static size_t io_http_read(VC_CONTAINER_IO_T *p_ctx, void *buffer, size_t size)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_IO_MODULE_T *module = p_ctx->module;
   size_t content_length;
   size_t bytes_read;
   size_t ret = 0;
   char *ptr = buffer;





   if (module->cur_offset >= p_ctx->size)
   {
      p_ctx->status = VC_CONTAINER_ERROR_EOS;
      return 0;
   }

   if (!module->persistent)
   {
      status = io_http_open_socket(p_ctx);
      if (status != VC_CONTAINER_SUCCESS)
      {
         LOG_ERROR(((void*)0), "Error opening socket for GET request");
         return status;
      }
   }


   status = io_http_send_get_request(p_ctx, size);
   if (status != VC_CONTAINER_SUCCESS)
   {
      LOG_ERROR(((void*)0), "Error sending GET request");
      goto error;
   }

   status = io_http_read_response(p_ctx);
   if (status == VC_CONTAINER_ERROR_EOS && !module->reconnecting)
   {
      LOG_DEBUG(((void*)0), "reconnecting");
      io_http_close_socket(module);
      status = io_http_open_socket(p_ctx);
      if (status == VC_CONTAINER_SUCCESS)
      {
         module->reconnecting = 1;
         status = io_http_read(p_ctx, buffer, size);
         module->reconnecting = 0;
         return status;
      }
   }
   if (status != VC_CONTAINER_SUCCESS)
   {
      LOG_ERROR(((void*)0), "Error reading GET response");
      goto error;
   }





   content_length = (size_t)io_http_get_content_length(module->header_list);
   if (content_length > size)
   {
      LOG_ERROR(((void*)0), "received too much data (%i/%i)",
                (int)content_length, (int)size);
      status = VC_CONTAINER_ERROR_CORRUPTED;
      goto error;
   }

   bytes_read = 0;
   while (bytes_read < content_length && p_ctx->status == VC_CONTAINER_SUCCESS)
   {
      ret = io_http_read_from_net(p_ctx, ptr, content_length - bytes_read);
      if (p_ctx->status == VC_CONTAINER_SUCCESS)
      {
         bytes_read += ret;
         ptr += ret;
      }
   }

   if (p_ctx->status == VC_CONTAINER_SUCCESS)
   {
      module->cur_offset += bytes_read;
      ret = bytes_read;
   }

   if (!module->persistent)
      io_http_close_socket(module);

   return ret;

error:
   if (!module->persistent)
      io_http_close_socket(module);

   return status;
}
