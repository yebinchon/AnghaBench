
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;


 int IS_64BIT_PROCESS (int ) ;

int
proc_is64bit(proc_t p)
{
 return(IS_64BIT_PROCESS(p));
}
