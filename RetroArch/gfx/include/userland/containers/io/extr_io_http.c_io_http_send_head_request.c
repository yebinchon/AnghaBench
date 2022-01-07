
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_5__ {int uri_parts; TYPE_2__* module; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_6__ {char* comms_buffer; } ;
typedef TYPE_2__ VC_CONTAINER_IO_MODULE_T ;


 int HEAD_METHOD ;
 char* HTTP_REQUEST_LINE_FORMAT ;
 int LOG_ERROR (int ,char*,int,int) ;
 char* TRAILING_HEADERS_FORMAT ;
 int VC_CONTAINER_ERROR_OUT_OF_RESOURCES ;
 int io_http_send (TYPE_1__*) ;
 int snprintf (char*,int,char*,...) ;
 int vc_uri_host (int ) ;
 int vc_uri_path (int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T io_http_send_head_request(VC_CONTAINER_IO_T *p_ctx)
{
   VC_CONTAINER_IO_MODULE_T *module = p_ctx->module;
   char *ptr = module->comms_buffer, *end = ptr + sizeof(module->comms_buffer);

   ptr += snprintf(ptr, end - ptr, HTTP_REQUEST_LINE_FORMAT, HEAD_METHOD,
                   vc_uri_path(p_ctx->uri_parts), vc_uri_host(p_ctx->uri_parts));
   if (ptr < end)
      ptr += snprintf(ptr, end - ptr, TRAILING_HEADERS_FORMAT);

   if (ptr >= end)
   {
      LOG_ERROR(0, "comms buffer too small (%i/%u)", (int)(end - ptr),
                sizeof(module->comms_buffer));
      return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;
   }

   return io_http_send(p_ctx);
}
