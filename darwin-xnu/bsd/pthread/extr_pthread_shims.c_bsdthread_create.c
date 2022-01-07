
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int user_addr_t ;
struct proc {int dummy; } ;
struct bsdthread_create_args {int flags; int pthread; int stack; int func_arg; int func; } ;
struct TYPE_2__ {int (* bsdthread_create ) (struct proc*,int ,int ,int ,int ,int ,int *) ;} ;


 TYPE_1__* pthread_functions ;
 int stub1 (struct proc*,int ,int ,int ,int ,int ,int *) ;

int
bsdthread_create(struct proc *p, struct bsdthread_create_args *uap, user_addr_t *retval)
{
 return pthread_functions->bsdthread_create(p, uap->func, uap->func_arg, uap->stack, uap->pthread, uap->flags, retval);
}
