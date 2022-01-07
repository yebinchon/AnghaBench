
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data_UID; scalar_t__ palette_UID; scalar_t__ depth_UID; scalar_t__ gxm_rtgt; } ;
typedef TYPE_1__ vita2d_texture ;


 int free (TYPE_1__*) ;
 int gpu_free (scalar_t__) ;
 int sceGxmDestroyRenderTarget (scalar_t__) ;

void vita2d_free_texture(vita2d_texture *texture)
{
 if (texture) {
  if (texture->gxm_rtgt) {
   sceGxmDestroyRenderTarget(texture->gxm_rtgt);
  }
  if (texture->depth_UID) {
   gpu_free(texture->depth_UID);
  }
  if (texture->palette_UID) {
   gpu_free(texture->palette_UID);
  }
  gpu_free(texture->data_UID);
  free(texture);
 }
}
