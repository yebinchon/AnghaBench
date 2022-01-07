
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int keep_aspect; int should_resize; } ;
typedef TYPE_1__ wiiu_video_t ;



__attribute__((used)) static void wiiu_gfx_set_aspect_ratio(void *data, unsigned aspect_ratio_idx)
{
   wiiu_video_t *wiiu = (wiiu_video_t *)data;

   if (!wiiu)
      return;

   wiiu->keep_aspect = 1;
   wiiu->should_resize = 1;
}
