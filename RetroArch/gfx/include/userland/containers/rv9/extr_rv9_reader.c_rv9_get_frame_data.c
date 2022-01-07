
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_8__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
struct TYPE_9__ {scalar_t__ frame_read; scalar_t__ data_len; scalar_t__ data; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_7__ {TYPE_3__* module; } ;


 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 scalar_t__ READ_BYTES (TYPE_2__*,int *,scalar_t__) ;
 scalar_t__ SKIP_BYTES (TYPE_2__*,scalar_t__) ;
 int memcpy (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static uint32_t rv9_get_frame_data(VC_CONTAINER_T *p_ctx, uint32_t len, uint8_t *dest)
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   uint32_t ret = 0;



   if(module->frame_read < module->data_len)
   {
      uint32_t copy = MIN(len, module->data_len - module->frame_read);
      if(dest)
      {
         memcpy(dest, module->data + module->frame_read, copy);
         dest += copy;
      }
      ret += copy;
      len -= copy;
   }


   if(len > 0)
   {
      if(dest)
         ret += READ_BYTES(p_ctx, dest, len);
      else
         ret += SKIP_BYTES(p_ctx, len);
   }

   module->frame_read += ret;
   return ret;
}
