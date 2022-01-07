
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef int kauth_cred_t ;
struct TYPE_4__ {int p_acflag; } ;


 int kauth_cred_proc_ref (TYPE_1__*) ;
 int kauth_cred_unref (int *) ;
 int suser (int ,int *) ;

int
proc_suser(proc_t p)
{
 kauth_cred_t my_cred;
 int error;

 my_cred = kauth_cred_proc_ref(p);
 error = suser(my_cred, &p->p_acflag);
 kauth_cred_unref(&my_cred);
 return(error);
}
