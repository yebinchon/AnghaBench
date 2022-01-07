
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_ssize_t ;
struct readv_nocancel_args {int dummy; } ;
struct readv_args {int dummy; } ;
struct proc {int dummy; } ;


 int __pthread_testcancel (int) ;
 int readv_nocancel (struct proc*,struct readv_nocancel_args*,int *) ;

int
readv(struct proc *p, struct readv_args *uap, user_ssize_t *retval)
{
 __pthread_testcancel(1);
 return(readv_nocancel(p, (struct readv_nocancel_args *)uap, retval));
}
