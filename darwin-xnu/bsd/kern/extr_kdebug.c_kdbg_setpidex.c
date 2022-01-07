
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct proc {int p_kdebug; } ;
typedef scalar_t__ pid_t ;
struct TYPE_4__ {scalar_t__ value2; scalar_t__ value1; } ;
typedef TYPE_1__ kd_regtype ;
struct TYPE_5__ {int kdebug_flags; } ;


 int EINVAL ;
 int ESRCH ;
 int KDBG_PIDCHECK ;
 int KDBG_PIDEXCLUDE ;
 int SLOW_CHECKS ;
 int TRUE ;
 TYPE_3__ kd_ctrl_page ;
 int kdbg_set_flags (int ,int ,int ) ;
 struct proc* proc_find (scalar_t__) ;
 int proc_rele (struct proc*) ;

int
kdbg_setpidex(kd_regtype *kdr)
{
 pid_t pid;
 int flag, ret=0;
 struct proc *p;

 pid = (pid_t)kdr->value1;
 flag = (int)kdr->value2;

 if (pid >= 0) {
  if ((p = proc_find(pid)) == ((void*)0))
   ret = ESRCH;
  else {
   if (flag == 1) {



    kd_ctrl_page.kdebug_flags |= KDBG_PIDEXCLUDE;
    kd_ctrl_page.kdebug_flags &= ~KDBG_PIDCHECK;
    kdbg_set_flags(SLOW_CHECKS, 0, TRUE);

    p->p_kdebug = 1;
   }
   else {






    p->p_kdebug = 0;
   }
   proc_rele(p);
  }
 } else
  ret = EINVAL;

 return(ret);
}
