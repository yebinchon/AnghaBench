
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_7__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_8__ {char* comms_buffer; int uri_has_network_info; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_9__ {int status; } ;
struct TYPE_6__ {TYPE_4__* io; TYPE_3__* module; } ;


 int VC_CONTAINER_SUCCESS ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ vc_container_io_write (TYPE_4__*,char const*,scalar_t__) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T rtsp_send( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   uint32_t to_write;
   uint32_t written;
   const char *buffer = module->comms_buffer;


   if (!module->uri_has_network_info)
      return VC_CONTAINER_SUCCESS;

   to_write = strlen(buffer);

   while (to_write)
   {
      written = vc_container_io_write(p_ctx->priv->io, buffer, to_write);
      if (!written)
         break;
      to_write -= written;
      buffer += written;
   }

   return p_ctx->priv->io->status;
}
