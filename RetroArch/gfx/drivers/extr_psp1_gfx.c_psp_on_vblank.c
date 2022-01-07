
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int vblank_not_reached; } ;
typedef TYPE_1__ psp1_video_t ;



__attribute__((used)) static void psp_on_vblank(u32 sub, psp1_video_t *psp)
{
   if (psp)
      psp->vblank_not_reached = 0;
}
