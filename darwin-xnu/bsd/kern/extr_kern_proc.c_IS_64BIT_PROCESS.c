
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_flag; } ;


 int P_LP64 ;

int
IS_64BIT_PROCESS(proc_t p)
{
 if (p && (p->p_flag & P_LP64))
  return(1);
 else
  return(0);
}
