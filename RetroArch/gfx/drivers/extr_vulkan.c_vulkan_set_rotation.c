
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rotation; } ;
typedef TYPE_1__ vk_t ;
struct video_ortho {int member_1; int member_3; int member_4; int member_5; int member_2; int member_0; } ;


 int vulkan_set_projection (TYPE_1__*,struct video_ortho*,int) ;

__attribute__((used)) static void vulkan_set_rotation(void *data, unsigned rotation)
{
   vk_t *vk = (vk_t*)data;
   struct video_ortho ortho = {0, 1, 0, 1, -1, 1};

   if (!vk)
      return;

   vk->rotation = 270 * rotation;
   vulkan_set_projection(vk, &ortho, 1);
}
