
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pcd_event { ____Placeholder_pcd_event } pcd_event ;


 scalar_t__ CYCLES_GT (unsigned int,unsigned int) ;
 int EL_CD ;
 int elprintf (int ,char*,int,unsigned int,unsigned int) ;
 unsigned int event_time_next ;
 unsigned int* pcd_event_times ;

void pcd_event_schedule(unsigned int now, enum pcd_event event, int after)
{
  unsigned int when;

  when = now + after;
  if (when == 0) {

    pcd_event_times[event] = 0;
    return;
  }

  when |= 1;

  elprintf(EL_CD, "cd: new event #%u %u->%u", event, now, when);
  pcd_event_times[event] = when;

  if (event_time_next == 0 || CYCLES_GT(event_time_next, when))
    event_time_next = when;
}
