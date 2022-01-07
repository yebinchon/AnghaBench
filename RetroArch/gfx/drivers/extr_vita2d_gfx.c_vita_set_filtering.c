
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tex_filter; int texture; } ;
typedef TYPE_1__ vita_video_t ;


 int SCE_GXM_TEXTURE_FILTER_LINEAR ;
 int SCE_GXM_TEXTURE_FILTER_POINT ;
 int vita2d_texture_set_filters (int ,int ,int ) ;

__attribute__((used)) static void vita_set_filtering(void *data, unsigned index, bool smooth)
{
   vita_video_t *vita = (vita_video_t *)data;

   if (vita)
   {
      vita->tex_filter = smooth ?
         SCE_GXM_TEXTURE_FILTER_LINEAR : SCE_GXM_TEXTURE_FILTER_POINT;
      vita2d_texture_set_filters(vita->texture,vita->tex_filter,
            vita->tex_filter);
   }
}
