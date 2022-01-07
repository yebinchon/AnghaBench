
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
typedef int proc_t ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct proc*) ;
 int kauth_cred_proc_ref (int ) ;
 int kauth_cred_unref (int *) ;
 int mac_proc_check_enforce (int ) ;
 int mac_proc_enforce ;
 int proc_check_debug ;

int
mac_proc_check_debug(proc_t curp, struct proc *proc)
{
 kauth_cred_t cred;
 int error;






 if (!mac_proc_check_enforce(curp))
  return 0;

 cred = kauth_cred_proc_ref(curp);
 MAC_CHECK(proc_check_debug, cred, proc);
 kauth_cred_unref(&cred);

 return (error);
}
