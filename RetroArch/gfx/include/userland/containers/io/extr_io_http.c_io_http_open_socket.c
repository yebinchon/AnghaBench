
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_4__ {int uri_parts; TYPE_2__* module; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_5__ {int sock; } ;
typedef TYPE_2__ VC_CONTAINER_IO_MODULE_T ;


 int VC_CONTAINER_ERROR_URI_NOT_FOUND ;
 int VC_CONTAINER_ERROR_URI_OPEN_FAILED ;
 int VC_CONTAINER_NET_OPEN_FLAG_STREAM ;
 int VC_CONTAINER_SUCCESS ;
 int vc_container_net_open (char const*,char const*,int ,int *) ;
 char* vc_uri_host (int ) ;
 char* vc_uri_port (int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T io_http_open_socket(VC_CONTAINER_IO_T *ctx)
{
   VC_CONTAINER_IO_MODULE_T *module = ctx->module;
   VC_CONTAINER_STATUS_T status;
   const char *host, *port;


   port = vc_uri_port(ctx->uri_parts);
   if (port && !*port)
      port = ((void*)0);


   if (!port)
   {
      status = VC_CONTAINER_ERROR_URI_OPEN_FAILED;
      goto error;
   }

   host = vc_uri_host(ctx->uri_parts);
   if (host && !*host)
      host = ((void*)0);

   if (!host)
   {
      status = VC_CONTAINER_ERROR_URI_OPEN_FAILED;
      goto error;
   }

   module->sock = vc_container_net_open(host, port, VC_CONTAINER_NET_OPEN_FLAG_STREAM, ((void*)0));
   if (!module->sock)
   {
      status = VC_CONTAINER_ERROR_URI_NOT_FOUND;
      goto error;
   }

   return VC_CONTAINER_SUCCESS;

error:
   return status;
}
