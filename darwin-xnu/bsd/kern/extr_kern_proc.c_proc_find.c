
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;


 int proc_findinternal (int,int ) ;

proc_t
proc_find(int pid)
{
 return(proc_findinternal(pid, 0));
}
