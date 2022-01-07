
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct setprivexec_args {scalar_t__ flag; } ;
typedef TYPE_1__* proc_t ;
typedef int int32_t ;
struct TYPE_3__ {int p_debugger; } ;


 int AUDIT_ARG (int ,scalar_t__) ;
 int value32 ;

int
setprivexec(proc_t p, struct setprivexec_args *uap, int32_t *retval)
{
 AUDIT_ARG(value32, uap->flag);
 *retval = p->p_debugger;
 p->p_debugger = (uap->flag != 0);
 return(0);
}
