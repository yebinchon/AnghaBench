
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* processor_set_t ;
struct TYPE_5__ {int rt_runq; } ;


 int memset (int *,int,int) ;
 TYPE_1__ pset0 ;
 void pset_rt_init (TYPE_1__*) ;

void
sched_rtglobal_init(processor_set_t pset)
{
 if (pset == &pset0) {
  return pset_rt_init(pset);
 }




 memset(&pset->rt_runq, 0xfd, sizeof pset->rt_runq);
}
