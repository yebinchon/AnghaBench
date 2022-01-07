
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_session_join_args {int dummy; } ;
typedef int proc_t ;
typedef int au_asid_t ;


 int ENOSYS ;

int
audit_session_join(proc_t p, struct audit_session_join_args *uap,
    au_asid_t *ret_asid)
{
#pragma unused(p, uap, ret_asid)

 return (ENOSYS);
}
