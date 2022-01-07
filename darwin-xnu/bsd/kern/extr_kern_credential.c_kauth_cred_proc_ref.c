
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;
typedef int kauth_cred_t ;


 int kauth_cred_ref (int ) ;
 int proc_ucred (int ) ;
 int proc_ucred_lock (int ) ;
 int proc_ucred_unlock (int ) ;

kauth_cred_t
kauth_cred_proc_ref(proc_t procp)
{
 kauth_cred_t cred;

 proc_ucred_lock(procp);
 cred = proc_ucred(procp);
 kauth_cred_ref(cred);
 proc_ucred_unlock(procp);
 return(cred);
}
