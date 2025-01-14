
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {unsigned int width; unsigned int height; } ;
struct TYPE_8__ {int x; int y; } ;
struct TYPE_10__ {TYPE_2__ extent; TYPE_1__ offset; } ;
struct TYPE_11__ {int use_scissor; int dirty; TYPE_3__ scissor; } ;
struct TYPE_12__ {TYPE_4__ tracker; } ;
typedef TYPE_5__ vk_t ;
struct TYPE_13__ {scalar_t__ userdata; } ;
typedef TYPE_6__ video_frame_info_t ;


 int VULKAN_DIRTY_DYNAMIC_BIT ;

__attribute__((used)) static void menu_display_vk_scissor_begin(video_frame_info_t *video_info,
      int x, int y, unsigned width, unsigned height)
{
   vk_t *vk = (vk_t*)video_info->userdata;

   vk->tracker.use_scissor = 1;
   vk->tracker.scissor.offset.x = x;
   vk->tracker.scissor.offset.y = y;
   vk->tracker.scissor.extent.width = width;
   vk->tracker.scissor.extent.height = height;
   vk->tracker.dirty |= VULKAN_DIRTY_DYNAMIC_BIT;
}
