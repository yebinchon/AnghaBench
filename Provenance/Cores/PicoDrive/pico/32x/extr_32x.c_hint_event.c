
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P32XI_HINT ;
 int p32x_schedule_hint (int *,unsigned int) ;
 int p32x_trigger_irq (int *,unsigned int,int ) ;

__attribute__((used)) static void hint_event(unsigned int now)
{
  p32x_trigger_irq(((void*)0), now, P32XI_HINT);
  p32x_schedule_hint(((void*)0), now);
}
