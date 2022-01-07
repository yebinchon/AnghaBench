
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_lflag; } ;


 int P_LPEXIT ;

int
proc_in_teardown(proc_t p)
{
 int retval = 0;

 if (p)
  retval = p->p_lflag & P_LPEXIT;
 return(retval? 1: 0);

}
