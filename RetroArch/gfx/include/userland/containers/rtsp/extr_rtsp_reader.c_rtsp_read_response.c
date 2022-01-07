
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_12__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_13__ {char* comms_buffer; int header_list; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_14__ {scalar_t__ status; } ;
typedef TYPE_4__ VC_CONTAINER_IO_T ;
struct TYPE_15__ {char* name; char* value; } ;
struct TYPE_11__ {TYPE_4__* io; TYPE_3__* module; } ;
typedef TYPE_5__ RTSP_HEADER_T ;


 scalar_t__ COMMS_BUFFER_SIZE ;
 char* CONTENT_PSEUDOHEADER_NAME ;
 int LOG_ERROR (TYPE_2__*,char*,...) ;
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_INVALID ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ rtsp_get_content_length (int ) ;
 int rtsp_successful_response_status (TYPE_2__*,char*) ;
 char* rtsp_trim (char*) ;
 scalar_t__ vc_container_io_read (TYPE_4__*,char*,scalar_t__) ;
 int vc_containers_list_insert (int ,TYPE_5__*,int) ;
 int vc_containers_list_reset (int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T rtsp_read_response( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_IO_T *p_ctx_io = p_ctx->priv->io;
   char *next_read = module->comms_buffer;
   uint32_t space_available = COMMS_BUFFER_SIZE - 1;
   uint32_t received;
   char *ptr = next_read;
   bool found_content = 0;
   RTSP_HEADER_T header;

   vc_containers_list_reset(module->header_list);


   header.name = ((void*)0);
   header.value = next_read;

   while (space_available)
   {
      received = vc_container_io_read(p_ctx_io, next_read, space_available);
      if (p_ctx_io->status != VC_CONTAINER_SUCCESS)
         break;

      next_read += received;
      space_available -= received;

      while (!found_content && ptr < next_read)
      {
         switch (*ptr)
         {
         case ':':
            if (header.value)
            {

               ptr++;
            } else {

               *ptr++ = '\0';
               header.value = ptr;
            }
            break;

         case '\n':
            if (header.value)
            {

               *ptr++ = '\0';
               header.value = rtsp_trim(header.value);
               if (header.name)
               {
                  if (!vc_containers_list_insert(module->header_list, &header, 0))
                  {
                     LOG_ERROR(p_ctx, "RTSP: Failed to add <%s> header to list", header.name);
                     return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
                  }
               } else {

                  if (!rtsp_successful_response_status(p_ctx, header.value))
                     return VC_CONTAINER_ERROR_FORMAT_INVALID;
               }

               header.name = ptr;
               header.value = ((void*)0);
            } else {
               uint32_t content_length;


               *ptr++ = '\0';
               if (*header.name && *header.name != '\r')
               {

                  LOG_ERROR(p_ctx, "RTSP: Invalid name in header - no colon:\n%s", header.name);
                  return VC_CONTAINER_ERROR_FORMAT_INVALID;
               }


               found_content = 1;


               header.name = CONTENT_PSEUDOHEADER_NAME;
               header.value = ptr;
               if (!vc_containers_list_insert(module->header_list, &header, 0))
               {
                  LOG_ERROR(p_ctx, "RTSP: Failed to add content pseudoheader to list");
                  return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
               }


               content_length = rtsp_get_content_length(module->header_list);
               if (ptr + content_length < next_read)
               {

                  space_available = 0;
               } else {
                  uint32_t content_to_read = content_length - (next_read - ptr);

                  if (content_to_read >= space_available)
                  {
                     LOG_ERROR(p_ctx, "RTSP: Not enough room to read content");
                     return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
                  }


                  space_available = content_to_read;
               }
            }
            break;

         default:

            ptr++;
         }
      }
   }

   if (!space_available)
   {
      if (found_content)
      {

         *next_read = '\0';
      } else {

         LOG_ERROR(p_ctx, "RTSP: Response header section too big / content missing");
         return VC_CONTAINER_ERROR_FORMAT_INVALID;
      }
   }

   return p_ctx_io->status;
}
