
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;


 int FALSE ;
 int proc_refdrain_with_refwait (int ,int ) ;

void
proc_refdrain(proc_t p)
{
 proc_refdrain_with_refwait(p, FALSE);
}
