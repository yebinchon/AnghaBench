
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vsync; } ;
typedef TYPE_1__ wiiu_video_t ;


 int GX2SetSwapInterval (int) ;

__attribute__((used)) static void wiiu_gfx_set_nonblock_state(void *data, bool toggle)
{
   wiiu_video_t *wiiu = (wiiu_video_t *) data;

   if (!wiiu)
      return;

   wiiu->vsync = !toggle;
   GX2SetSwapInterval(!toggle);
}
