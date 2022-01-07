
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef int kauth_cred_t ;
struct TYPE_3__ {int p_ucred; } ;



kauth_cred_t
proc_ucred(proc_t p)
{
 return(p->p_ucred);
}
