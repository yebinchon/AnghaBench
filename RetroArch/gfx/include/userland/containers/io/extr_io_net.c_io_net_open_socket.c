
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_4__ {int uri_parts; TYPE_2__* module; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_5__ {void* write_capture_file; void* read_capture_file; int sock; } ;
typedef TYPE_2__ VC_CONTAINER_IO_MODULE_T ;
typedef scalar_t__ VC_CONTAINER_IO_MODE_T ;


 int VC_CONTAINER_ERROR_URI_NOT_FOUND ;
 int VC_CONTAINER_ERROR_URI_OPEN_FAILED ;
 scalar_t__ VC_CONTAINER_IO_MODE_READ ;
 scalar_t__ VC_CONTAINER_IO_MODE_WRITE ;
 int VC_CONTAINER_NET_OPEN_FLAG_STREAM ;
 int VC_CONTAINER_SUCCESS ;
 void* io_net_open_capture_file (char const*,char const*,int,scalar_t__) ;
 int vc_container_net_open (char const*,char const*,int ,int *) ;
 char* vc_uri_host (int ) ;
 char* vc_uri_port (int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T io_net_open_socket(VC_CONTAINER_IO_T *ctx,
   VC_CONTAINER_IO_MODE_T mode, bool is_udp)
{
   VC_CONTAINER_IO_MODULE_T *module = ctx->module;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   const char *host, *port;


   port = vc_uri_port(ctx->uri_parts);
   if (port && !*port)
      port = ((void*)0);


   if (!port) { status = VC_CONTAINER_ERROR_URI_OPEN_FAILED; goto error; }

   host = vc_uri_host(ctx->uri_parts);
   if (host && !*host)
      host = ((void*)0);

   if (!host)
   {

      if (!is_udp || mode == VC_CONTAINER_IO_MODE_WRITE)
      {
         status = VC_CONTAINER_ERROR_URI_OPEN_FAILED;
         goto error;
      }
   }

   module->sock = vc_container_net_open(host, port, is_udp ? 0 : VC_CONTAINER_NET_OPEN_FLAG_STREAM, ((void*)0));
   if (!module->sock) { status = VC_CONTAINER_ERROR_URI_NOT_FOUND; goto error; }
error:
   return status;
}
