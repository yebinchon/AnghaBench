
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_session_port_args {int dummy; } ;
typedef int proc_t ;


 int ENOSYS ;

int
audit_session_port(proc_t p, struct audit_session_port_args *uap, int *retval)
{
#pragma unused(p, uap, retval)

 return (ENOSYS);
}
