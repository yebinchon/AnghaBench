
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef int pid_t ;
struct TYPE_3__ {int p_pgrpid; } ;



pid_t
proc_pgrpid(proc_t p)
{
 return p->p_pgrpid;
}
