
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* jobs; int busy; } ;


 int* gp2x_memregs ;
 TYPE_1__* shared_ctl ;

void add_job_940(int job0, int job1)
{
 shared_ctl->jobs[0] = job0;
 shared_ctl->jobs[1] = job1;
 shared_ctl->busy = 1;
 gp2x_memregs[0x3B3E>>1] = 0xffff;
}
