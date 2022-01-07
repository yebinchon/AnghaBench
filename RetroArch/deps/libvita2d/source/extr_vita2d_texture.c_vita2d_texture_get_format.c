
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gxm_tex; } ;
typedef TYPE_1__ vita2d_texture ;
typedef int SceGxmTextureFormat ;


 int sceGxmTextureGetFormat (int *) ;

SceGxmTextureFormat vita2d_texture_get_format(const vita2d_texture *texture)
{
 return sceGxmTextureGetFormat(&texture->gxm_tex);
}
