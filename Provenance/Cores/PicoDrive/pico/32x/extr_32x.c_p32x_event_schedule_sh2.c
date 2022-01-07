
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum p32x_event { ____Placeholder_p32x_event } p32x_event ;
typedef int SH2 ;


 unsigned int event_time_next ;
 int p32x_event_schedule (unsigned int,int,int) ;
 unsigned int sh2_cycles_done_m68k (int *) ;
 int sh2_end_run (int *,int) ;

void p32x_event_schedule_sh2(SH2 *sh2, enum p32x_event event, int after)
{
  unsigned int now = sh2_cycles_done_m68k(sh2);
  int left_to_next;

  p32x_event_schedule(now, event, after);

  left_to_next = (event_time_next - now) * 3;
  sh2_end_run(sh2, left_to_next);
}
