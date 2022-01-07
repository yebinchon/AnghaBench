
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;


 int vfork_exit_internal (int ,int,int ) ;

void
vfork_exit(proc_t p, int rv)
{
 vfork_exit_internal(p, rv, 0);
}
