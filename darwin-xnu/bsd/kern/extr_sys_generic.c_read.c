
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_ssize_t ;
struct read_nocancel_args {int dummy; } ;
struct read_args {int dummy; } ;
struct proc {int dummy; } ;


 int __pthread_testcancel (int) ;
 int read_nocancel (struct proc*,struct read_nocancel_args*,int *) ;

int
read(struct proc *p, struct read_args *uap, user_ssize_t *retval)
{
 __pthread_testcancel(1);
 return(read_nocancel(p, (struct read_nocancel_args *)uap, retval));
}
