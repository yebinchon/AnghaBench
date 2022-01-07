
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_5__ {int capabilities; int pf_control; int pf_write; int pf_read; int (* pf_close ) (TYPE_1__*) ;int * module; int uri; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
typedef int VC_CONTAINER_IO_MODULE_T ;
typedef int VC_CONTAINER_IO_MODE_T ;


 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 scalar_t__ VC_CONTAINER_ERROR_URI_NOT_FOUND ;
 int VC_CONTAINER_IO_CAPS_CANT_SEEK ;
 int VC_CONTAINER_PARAM_UNUSED (char const*) ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int io_net_close (TYPE_1__*) ;
 int io_net_control ;
 scalar_t__ io_net_open_socket (TYPE_1__*,int ,int) ;
 int io_net_read ;
 int io_net_recognise_scheme (int ,int*) ;
 int io_net_write ;
 scalar_t__ malloc (int) ;
 int memset (int *,int ,int) ;

VC_CONTAINER_STATUS_T vc_container_io_net_open( VC_CONTAINER_IO_T *p_ctx,
   const char *unused, VC_CONTAINER_IO_MODE_T mode )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_IO_MODULE_T *module = 0;
   bool is_udp;
   VC_CONTAINER_PARAM_UNUSED(unused);

   if (!io_net_recognise_scheme(p_ctx->uri, &is_udp))
   { status = VC_CONTAINER_ERROR_URI_NOT_FOUND; goto error; }

   module = (VC_CONTAINER_IO_MODULE_T *)malloc( sizeof(*module) );
   if (!module) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   memset(module, 0, sizeof(*module));
   p_ctx->module = module;

   status = io_net_open_socket(p_ctx, mode, is_udp);
   if (status != VC_CONTAINER_SUCCESS)
      goto error;

   p_ctx->pf_close = io_net_close;
   p_ctx->pf_read = io_net_read;
   p_ctx->pf_write = io_net_write;
   p_ctx->pf_control = io_net_control;


   p_ctx->capabilities = VC_CONTAINER_IO_CAPS_CANT_SEEK;

   return VC_CONTAINER_SUCCESS;

error:
   io_net_close(p_ctx);
   return status;
}
