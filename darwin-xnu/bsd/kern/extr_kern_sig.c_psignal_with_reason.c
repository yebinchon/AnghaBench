
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_reason {int dummy; } ;
typedef int proc_t ;


 int psignal_internal (int ,int *,int *,int ,int,struct os_reason*) ;

void
psignal_with_reason(proc_t p, int signum, struct os_reason *signal_reason)
{
 psignal_internal(p, ((void*)0), ((void*)0), 0, signum, signal_reason);
}
