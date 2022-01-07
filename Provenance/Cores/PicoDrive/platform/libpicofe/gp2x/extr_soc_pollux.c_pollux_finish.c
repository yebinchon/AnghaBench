
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 scalar_t__ battdev ;
 int close (scalar_t__) ;
 scalar_t__ memdev ;
 int* memregl ;
 scalar_t__ memregs ;
 scalar_t__ mixerdev ;
 int munmap (void*,int) ;
 int restore_multiple_regs (int,int ,int ) ;
 int * saved_video_regs ;
 int timer_cleanup () ;
 int unset_ram_timings () ;

void pollux_finish(void)
{
 timer_cleanup();

 unset_ram_timings();

 restore_multiple_regs(0x4058, saved_video_regs[0],
  ARRAY_SIZE(saved_video_regs[0]));
 restore_multiple_regs(0x4458, saved_video_regs[1],
  ARRAY_SIZE(saved_video_regs[1]));
 memregl[0x4058>>2] |= 0x10;
 memregl[0x4458>>2] |= 0x10;

 if (battdev >= 0)
  close(battdev);
 if (mixerdev >= 0)
  close(mixerdev);
 munmap((void *)memregs, 0x20000);
 close(memdev);
}
