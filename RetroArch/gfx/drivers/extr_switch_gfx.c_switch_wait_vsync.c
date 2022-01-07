
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int vsync_h; } ;
typedef TYPE_1__ switch_video_t ;


 int svcResetSignal (int ) ;
 int svcWaitSynchronization (int *,int *,int,int) ;

__attribute__((used)) static void switch_wait_vsync(switch_video_t *sw)
{
 uint32_t handle_idx;
 svcWaitSynchronization(&handle_idx, &sw->vsync_h, 1, 33333333);
 svcResetSignal(sw->vsync_h);
}
