
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;


 int PSIG_LOCKED ;
 int psignal_internal (int ,int *,int *,int ,int,int *) ;

void
psignal_locked(proc_t p, int signum)
{
 psignal_internal(p, ((void*)0), ((void*)0), PSIG_LOCKED, signum, ((void*)0));
}
