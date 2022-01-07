
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uthread_t ;
typedef int proc_t ;


 int current_proc () ;
 int current_thread () ;
 int get_bsdthread_info (int ) ;
 int kauth_cred_uthread_update (int ,int ) ;

void
mach_kauth_cred_uthread_update(void)
{
 uthread_t uthread;
 proc_t proc;

 uthread = get_bsdthread_info(current_thread());
 proc = current_proc();

 kauth_cred_uthread_update(uthread, proc);
}
