
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vsync_event_pending; } ;
typedef TYPE_1__ ctr_video_t ;



__attribute__((used)) static void ctr_vsync_hook(ctr_video_t* ctr)
{
   ctr->vsync_event_pending = 0;
}
