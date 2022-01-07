
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct killpg1_filtargs {TYPE_1__* curproc; scalar_t__ posix; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_pid; int p_flag; } ;


 int P_SYSTEM ;

__attribute__((used)) static int
killpg1_allfilt(proc_t p, void * arg)
{
 struct killpg1_filtargs * kfargp = (struct killpg1_filtargs *)arg;





 return (p->p_pid > 1 && !(p->p_flag & P_SYSTEM) &&
   (kfargp->posix ? 1 : p != kfargp->curproc));
}
