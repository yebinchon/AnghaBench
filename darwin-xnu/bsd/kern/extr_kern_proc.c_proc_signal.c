
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;


 int PROC_NULL ;
 int proc_find (int) ;
 int proc_rele (int ) ;
 int psignal (int ,int) ;

void
proc_signal(int pid, int signum)
{
 proc_t p;

 if ((p = proc_find(pid)) != PROC_NULL) {
   psignal(p, signum);
   proc_rele(p);
 }
}
