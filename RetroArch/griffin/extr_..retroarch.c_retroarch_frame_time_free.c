
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_frame_time_callback {int dummy; } ;


 int memset (int *,int ,int) ;
 int runloop_frame_time ;
 scalar_t__ runloop_frame_time_last ;
 scalar_t__ runloop_max_frames ;

__attribute__((used)) static void retroarch_frame_time_free(void)
{
   memset(&runloop_frame_time, 0,
         sizeof(struct retro_frame_time_callback));
   runloop_frame_time_last = 0;
   runloop_max_frames = 0;
}
