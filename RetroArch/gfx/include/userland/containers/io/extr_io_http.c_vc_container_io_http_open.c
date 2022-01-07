
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_8__ {int capabilities; int pf_seek; int pf_control; int * pf_write; int pf_read; int (* pf_close ) (TYPE_1__*) ;int uri_parts; TYPE_2__* module; int uri; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_9__ {int header_list; } ;
typedef TYPE_2__ VC_CONTAINER_IO_MODULE_T ;
typedef scalar_t__ VC_CONTAINER_IO_MODE_T ;
typedef int VC_CONTAINERS_LIST_COMPARATOR_T ;
typedef int HTTP_HEADER_T ;


 int HEADER_LIST_INITIAL_CAPACITY ;
 scalar_t__ HTTP_URI_LENGTH_MAX ;
 int IO_HTTP_DEFAULT_PORT ;
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 scalar_t__ VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION ;
 scalar_t__ VC_CONTAINER_ERROR_URI_OPEN_FAILED ;
 int VC_CONTAINER_IO_CAPS_NO_CACHING ;
 int VC_CONTAINER_IO_CAPS_SEEK_SLOW ;
 scalar_t__ VC_CONTAINER_IO_MODE_WRITE ;
 int VC_CONTAINER_PARAM_UNUSED (char const*) ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 TYPE_2__* calloc (int,int) ;
 int io_http_close (TYPE_1__*) ;
 int io_http_control ;
 scalar_t__ io_http_head (TYPE_1__*) ;
 scalar_t__ io_http_header_comparator ;
 scalar_t__ io_http_open_socket (TYPE_1__*) ;
 int io_http_read ;
 int io_http_seek ;
 scalar_t__ strcasecmp (int ,char*) ;
 scalar_t__ strlen (int ) ;
 int vc_containers_list_create (int ,int,int ) ;
 int * vc_uri_port (int ) ;
 int vc_uri_scheme (int ) ;
 int vc_uri_set_port (int ,int ) ;

VC_CONTAINER_STATUS_T vc_container_io_http_open(VC_CONTAINER_IO_T *p_ctx,
   const char *unused, VC_CONTAINER_IO_MODE_T mode)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_IO_MODULE_T *module = 0;
   VC_CONTAINER_PARAM_UNUSED(unused);


   if (!vc_uri_scheme(p_ctx->uri_parts) ||
       strcasecmp(vc_uri_scheme(p_ctx->uri_parts), "http"))
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;





   if (mode == VC_CONTAINER_IO_MODE_WRITE)
   {
      status = VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION;
      goto error;
   }

   if (strlen(p_ctx->uri) > HTTP_URI_LENGTH_MAX)
   {
      status = VC_CONTAINER_ERROR_URI_OPEN_FAILED;
      goto error;
   }

   module = calloc(1, sizeof(*module));
   if (!module)
   {
      status = VC_CONTAINER_ERROR_OUT_OF_MEMORY;
      goto error;
   }
   p_ctx->module = module;


   module->header_list = vc_containers_list_create(HEADER_LIST_INITIAL_CAPACITY, sizeof(HTTP_HEADER_T),
                                           (VC_CONTAINERS_LIST_COMPARATOR_T)io_http_header_comparator);
   if (!module->header_list)
   {
      status = VC_CONTAINER_ERROR_OUT_OF_MEMORY;
      goto error;
   }





   if (vc_uri_port(p_ctx->uri_parts) == ((void*)0))
      vc_uri_set_port(p_ctx->uri_parts, IO_HTTP_DEFAULT_PORT);

   status = io_http_open_socket(p_ctx);
   if (status != VC_CONTAINER_SUCCESS)
      goto error;





   status = io_http_head(p_ctx);
   if (status != VC_CONTAINER_SUCCESS)
      goto error;

   p_ctx->pf_close = io_http_close;
   p_ctx->pf_read = io_http_read;
   p_ctx->pf_write = ((void*)0);
   p_ctx->pf_control = io_http_control;
   p_ctx->pf_seek = io_http_seek;

   p_ctx->capabilities = VC_CONTAINER_IO_CAPS_NO_CACHING;
   p_ctx->capabilities |= VC_CONTAINER_IO_CAPS_SEEK_SLOW;

   return VC_CONTAINER_SUCCESS;

error:
   io_http_close(p_ctx);
   return status;
}
