
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_mca_state; } ;


 scalar_t__ CLEAR ;
 TYPE_1__* current_cpu_datap () ;
 scalar_t__ mca_dump_state ;
 int mca_save_state (int ) ;

void
mca_check_save(void)
{
 if (mca_dump_state > CLEAR)
  mca_save_state(current_cpu_datap()->cpu_mca_state);
}
