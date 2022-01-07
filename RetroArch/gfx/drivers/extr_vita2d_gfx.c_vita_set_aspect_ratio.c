
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int keep_aspect; int should_resize; } ;
typedef TYPE_1__ vita_video_t ;



__attribute__((used)) static void vita_set_aspect_ratio(void *data, unsigned aspect_ratio_idx)
{
   vita_video_t *vita = (vita_video_t*)data;

   if (!vita)
      return;
   vita->keep_aspect = 1;
   vita->should_resize = 1;
}
