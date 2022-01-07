
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umask_args {int newmask; } ;
typedef int proc_t ;
typedef int int32_t ;


 int UMASK_NOXSECURITY ;
 int umask1 (int ,int ,int ,int *) ;

int
umask(proc_t p, struct umask_args *uap, int32_t *retval)
{
 return(umask1(p, uap->newmask, UMASK_NOXSECURITY, retval));
}
