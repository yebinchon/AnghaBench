
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct kdebug_trace_args {int arg4; int arg3; int arg2; int arg1; int code; } ;
struct kdebug_trace64_args {int arg4; int arg3; int arg2; int arg1; int code; } ;
typedef int int32_t ;


 int kdebug_trace64 (struct proc*,struct kdebug_trace64_args*,int *) ;

int
kdebug_trace(struct proc *p, struct kdebug_trace_args *uap, int32_t *retval)
{
 struct kdebug_trace64_args uap64;

 uap64.code = uap->code;
 uap64.arg1 = uap->arg1;
 uap64.arg2 = uap->arg2;
 uap64.arg3 = uap->arg3;
 uap64.arg4 = uap->arg4;

 return kdebug_trace64(p, &uap64, retval);
}
