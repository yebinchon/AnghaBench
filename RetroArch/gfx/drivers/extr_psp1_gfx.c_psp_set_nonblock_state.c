
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vsync; } ;
typedef TYPE_1__ psp1_video_t ;



__attribute__((used)) static void psp_set_nonblock_state(void *data, bool toggle)
{
   psp1_video_t *psp = (psp1_video_t*)data;

   if (psp)
      psp->vsync = !toggle;
}
