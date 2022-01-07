
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_viewport {int dummy; } ;
struct TYPE_2__ {struct video_viewport vp; } ;
typedef TYPE_1__ wiiu_video_t ;



__attribute__((used)) static void wiiu_gfx_viewport_info(void *data,
                                   struct video_viewport *vp)
{
   wiiu_video_t *wiiu = (wiiu_video_t *) data;

   if (wiiu)
      *vp = wiiu->vp;
}
