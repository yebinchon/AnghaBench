
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cpu_running; } ;


 TYPE_1__* cpu_datap (int) ;
 int delay (unsigned int) ;

__attribute__((used)) static void
mp_wait_for_cpu_up(int slot_num, unsigned int iters, unsigned int usecdelay)
{
 while (iters-- > 0) {
  if (cpu_datap(slot_num)->cpu_running)
   break;
  delay(usecdelay);
 }
}
