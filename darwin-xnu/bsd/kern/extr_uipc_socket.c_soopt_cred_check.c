
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct socket {int so_flags; int * so_cred; int e_pid; } ;
typedef scalar_t__ proc_t ;
typedef int * kauth_cred_t ;
typedef int boolean_t ;


 scalar_t__ PROC_NULL ;
 int SOF_DELEGATED ;
 scalar_t__ kauth_cred_getuid (int *) ;
 int * kauth_cred_proc_ref (scalar_t__) ;
 int kauth_cred_unref (int **) ;
 int priv_check_cred (int *,int,int ) ;
 scalar_t__ proc_find (int ) ;
 int proc_rele (scalar_t__) ;

int
soopt_cred_check(struct socket *so, int priv, boolean_t allow_root)
{
 kauth_cred_t cred = ((void*)0);
 proc_t ep = PROC_NULL;
 uid_t uid;
 int error = 0;

 if (so->so_flags & SOF_DELEGATED) {
  ep = proc_find(so->e_pid);
  if (ep)
   cred = kauth_cred_proc_ref(ep);
 }

 uid = kauth_cred_getuid(cred ? cred : so->so_cred);


 if (uid != 0 || !allow_root)
  error = priv_check_cred(cred ? cred : so->so_cred, priv, 0);
 if (cred)
  kauth_cred_unref(&cred);
 if (ep != PROC_NULL)
  proc_rele(ep);

 return (error);
}
