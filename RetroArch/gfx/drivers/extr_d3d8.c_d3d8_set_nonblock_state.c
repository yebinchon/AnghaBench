
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vsync; } ;
struct TYPE_5__ {int needs_restore; int dev; TYPE_1__ video_info; } ;
typedef TYPE_2__ d3d8_video_t ;


 int D3D8_PRESENTATIONINTERVAL ;
 int D3DPRESENT_INTERVAL_IMMEDIATE ;
 int D3DPRESENT_INTERVAL_ONE ;
 int d3d8_restore (TYPE_2__*) ;
 int d3d8_set_render_state (int ,int ,int ) ;

__attribute__((used)) static void d3d8_set_nonblock_state(void *data, bool state)
{
   int interval = 0;
   d3d8_video_t *d3d = (d3d8_video_t*)data;

   if (!d3d)
      return;

   if (!state)
      interval = 1;
   d3d->video_info.vsync = !state;







   d3d->needs_restore = 1;
   d3d8_restore(d3d);

}
