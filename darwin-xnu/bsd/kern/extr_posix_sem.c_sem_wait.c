
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sem_wait_nocancel_args {int dummy; } ;
struct sem_wait_args {int dummy; } ;
typedef int proc_t ;
typedef int int32_t ;


 int __pthread_testcancel (int) ;
 int sem_wait_nocancel (int ,struct sem_wait_nocancel_args*,int *) ;

int
sem_wait(proc_t p, struct sem_wait_args *uap, int32_t *retval)
{
 __pthread_testcancel(1);
 return(sem_wait_nocancel(p, (struct sem_wait_nocancel_args *)uap, retval));
}
