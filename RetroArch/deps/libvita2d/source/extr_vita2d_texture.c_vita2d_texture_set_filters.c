
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gxm_tex; } ;
typedef TYPE_1__ vita2d_texture ;
typedef int SceGxmTextureFilter ;


 int sceGxmTextureSetMagFilter (int *,int ) ;
 int sceGxmTextureSetMinFilter (int *,int ) ;

void vita2d_texture_set_filters(vita2d_texture *texture, SceGxmTextureFilter min_filter, SceGxmTextureFilter mag_filter)
{
 sceGxmTextureSetMinFilter(&texture->gxm_tex, min_filter);
 sceGxmTextureSetMagFilter(&texture->gxm_tex, mag_filter);
}
