
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* omap; } ;
typedef TYPE_2__ omap_video_t ;
struct TYPE_3__ {int sync; } ;



__attribute__((used)) static void omap_gfx_set_nonblock_state(void *data, bool state)
{
   omap_video_t *vid;

   if (!data)
      return;

   vid = data;
   vid->omap->sync = !state;
}
