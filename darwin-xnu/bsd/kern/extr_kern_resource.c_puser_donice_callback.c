
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puser_nice_args {scalar_t__ who; int* errorp; int* foundp; int prio; int curp; } ;
typedef int proc_t ;
typedef int kauth_cred_t ;


 int PROC_RETURNED ;
 int donice (int ,int ,int ) ;
 scalar_t__ kauth_cred_getuid (int ) ;
 int kauth_cred_proc_ref (int ) ;
 int kauth_cred_unref (int *) ;

__attribute__((used)) static int
puser_donice_callback(proc_t p, void * arg)
{
 int error, n;
 struct puser_nice_args * pun = (struct puser_nice_args *)arg;
 kauth_cred_t my_cred;

 my_cred = kauth_cred_proc_ref(p);
 if (kauth_cred_getuid(my_cred) == pun->who) {
  error = donice(pun->curp, p, pun->prio);
  if (pun->errorp != ((void*)0))
   *pun->errorp = error;
  if (pun->foundp != ((void*)0)) {
   n = *pun->foundp;
   *pun->foundp = n+1;
  }
 }
 kauth_cred_unref(&my_cred);

 return(PROC_RETURNED);
}
