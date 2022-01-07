
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_ortho {int member_1; int member_3; int member_4; int member_5; int member_2; int member_0; } ;
struct TYPE_2__ {unsigned int dev_rotation; } ;
typedef TYPE_1__ d3d9_video_t ;



__attribute__((used)) static void d3d9_set_rotation(void *data, unsigned rot)
{
   d3d9_video_t *d3d = (d3d9_video_t*)data;
   struct video_ortho ortho = {0, 1, 0, 1, -1, 1};

   if (!d3d)
      return;

   d3d->dev_rotation = rot;
}
