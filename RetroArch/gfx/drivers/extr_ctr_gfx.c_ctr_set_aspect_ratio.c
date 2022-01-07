
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int keep_aspect; int should_resize; } ;
typedef TYPE_1__ ctr_video_t ;



__attribute__((used)) static void ctr_set_aspect_ratio(void* data, unsigned aspect_ratio_idx)
{
   ctr_video_t *ctr = (ctr_video_t*)data;

   if(!ctr)
      return;

   ctr->keep_aspect = 1;
   ctr->should_resize = 1;
}
