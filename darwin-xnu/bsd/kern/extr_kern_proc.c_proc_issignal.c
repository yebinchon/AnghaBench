
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int proc_t ;


 int PROC_NULL ;
 int proc_find (int) ;
 int proc_pendingsignals (int ,int ) ;
 int proc_rele (int ) ;

int
proc_issignal(int pid, sigset_t mask)
{
 proc_t p;
 int error=0;

 if ((p = proc_find(pid)) != PROC_NULL) {
  error = proc_pendingsignals(p, mask);
  proc_rele(p);
 }

 return(error);
}
