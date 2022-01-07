
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int dev_rotation; int should_resize; } ;
typedef TYPE_1__ d3d8_video_t ;



__attribute__((used)) static void d3d8_set_rotation(void *data, unsigned rot)
{
   d3d8_video_t *d3d = (d3d8_video_t*)data;

   if (!d3d)
      return;

   d3d->dev_rotation = rot;
   d3d->should_resize = 1;
}
