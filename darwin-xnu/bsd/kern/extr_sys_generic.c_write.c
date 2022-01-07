
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_ssize_t ;
struct write_nocancel_args {int dummy; } ;
struct write_args {int dummy; } ;
struct proc {int dummy; } ;


 int __pthread_testcancel (int) ;
 int write_nocancel (struct proc*,struct write_nocancel_args*,int *) ;

int
write(struct proc *p, struct write_args *uap, user_ssize_t *retval)
{
 __pthread_testcancel(1);
 return(write_nocancel(p, (struct write_nocancel_args *)uap, retval));

}
