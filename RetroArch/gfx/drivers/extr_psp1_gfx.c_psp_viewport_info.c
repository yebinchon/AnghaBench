
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_viewport {int dummy; } ;
struct TYPE_2__ {struct video_viewport vp; } ;
typedef TYPE_1__ psp1_video_t ;



__attribute__((used)) static void psp_viewport_info(void *data, struct video_viewport *vp)
{
   psp1_video_t *psp = (psp1_video_t*)data;

   if (psp)
      *vp = psp->vp;
}
