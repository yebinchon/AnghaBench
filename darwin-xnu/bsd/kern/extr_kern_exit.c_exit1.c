
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;


 int TRUE ;
 int exit1_internal (int ,int,int*,int ,int ,int ) ;

int
exit1(proc_t p, int rv, int *retval)
{
 return exit1_internal(p, rv, retval, TRUE, TRUE, 0);
}
