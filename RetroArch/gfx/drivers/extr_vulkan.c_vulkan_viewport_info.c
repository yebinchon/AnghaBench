
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct video_viewport {unsigned int full_width; unsigned int full_height; } ;
struct TYPE_3__ {unsigned int video_width; unsigned int video_height; struct video_viewport vp; } ;
typedef TYPE_1__ vk_t ;


 int vulkan_set_viewport (TYPE_1__*,unsigned int,unsigned int,int,int) ;

__attribute__((used)) static void vulkan_viewport_info(void *data, struct video_viewport *vp)
{
   unsigned width, height;
   vk_t *vk = (vk_t*)data;

   if (!vk)
      return;

   width = vk->video_width;
   height = vk->video_height;

   vulkan_set_viewport(vk, width, height, 0, 1);

   *vp = vk->vp;
   vp->full_width = width;
   vp->full_height = height;
}
