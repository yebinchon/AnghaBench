
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_session_self_args {int dummy; } ;
typedef int proc_t ;
typedef int mach_port_name_t ;


 int ENOSYS ;

int
audit_session_self(proc_t p, struct audit_session_self_args *uap,
    mach_port_name_t *ret_port)
{
#pragma unused(p, uap, ret_port)

 return (ENOSYS);
}
