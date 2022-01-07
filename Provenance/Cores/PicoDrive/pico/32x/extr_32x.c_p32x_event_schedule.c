
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum p32x_event { ____Placeholder_p32x_event } p32x_event ;


 scalar_t__ CYCLES_GT (unsigned int,unsigned int) ;
 int EL_32X ;
 int elprintf (int ,char*,int,unsigned int,unsigned int) ;
 unsigned int event_time_next ;
 unsigned int* p32x_event_times ;

void p32x_event_schedule(unsigned int now, enum p32x_event event, int after)
{
  unsigned int when;

  when = (now + after) | 1;

  elprintf(EL_32X, "32x: new event #%u %u->%u", event, now, when);
  p32x_event_times[event] = when;

  if (event_time_next == 0 || CYCLES_GT(event_time_next, when))
    event_time_next = when;
}
