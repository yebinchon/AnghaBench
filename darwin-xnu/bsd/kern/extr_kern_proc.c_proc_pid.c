
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_pid; } ;



int
proc_pid(proc_t p)
{
 if (p != ((void*)0))
  return (p->p_pid);
 return -1;
}
