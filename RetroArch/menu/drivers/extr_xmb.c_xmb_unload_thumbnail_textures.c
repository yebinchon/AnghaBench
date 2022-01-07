
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ left_thumbnail; scalar_t__ thumbnail; } ;
typedef TYPE_1__ xmb_handle_t ;


 int video_driver_texture_unload (scalar_t__*) ;

__attribute__((used)) static void xmb_unload_thumbnail_textures(void *data)
{
   xmb_handle_t *xmb = (xmb_handle_t*)data;
   if (!xmb)
      return;

   if (xmb->thumbnail)
      video_driver_texture_unload(&xmb->thumbnail);
   if (xmb->left_thumbnail)
      video_driver_texture_unload(&xmb->left_thumbnail);
}
