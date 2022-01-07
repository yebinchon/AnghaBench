
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cycles_timeslice; } ;
typedef TYPE_1__ SH2 ;


 int sh2_execute_drc (TYPE_1__*,int) ;
 int sh2_execute_interpreter (TYPE_1__*,int) ;

__attribute__((used)) static inline int sh2_execute(SH2 *sh2, int cycles, int use_drc)
{
  int ret;

  sh2->cycles_timeslice = cycles;





    ret = sh2_execute_interpreter(sh2, cycles);

  return sh2->cycles_timeslice - ret;
}
