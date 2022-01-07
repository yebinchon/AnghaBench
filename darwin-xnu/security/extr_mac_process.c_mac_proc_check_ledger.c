
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,int ,int) ;
 int kauth_cred_proc_ref (int ) ;
 int kauth_cred_unref (int *) ;
 int mac_proc_check_enforce (int ) ;
 int mac_proc_enforce ;
 int proc_check_ledger ;

int
mac_proc_check_ledger(proc_t curp, proc_t proc, int ledger_op)
{
 kauth_cred_t cred;
 int error = 0;






 if (!mac_proc_check_enforce(curp))
  return 0;

 cred = kauth_cred_proc_ref(curp);
 MAC_CHECK(proc_check_ledger, cred, proc, ledger_op);
 kauth_cred_unref(&cred);

 return (error);
}
