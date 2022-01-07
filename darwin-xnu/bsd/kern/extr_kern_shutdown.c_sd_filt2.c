
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sd_filterargs {int delayterm; int shutdownstate; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_4__ {int p_flag; scalar_t__ p_ppid; scalar_t__ p_stat; int p_shutdownstate; int p_lflag; } ;


 int P_LDELAYTERM ;
 int P_SYSTEM ;
 scalar_t__ SZOMB ;
 TYPE_1__* current_proc () ;

__attribute__((used)) static int
sd_filt2(proc_t p, void * args)
{
 proc_t self = current_proc();
 struct sd_filterargs * sf = (struct sd_filterargs *)args;
 int delayterm = sf-> delayterm;
 int shutdownstate = sf->shutdownstate;

 if (((p->p_flag&P_SYSTEM) != 0) || (p->p_ppid == 0)
  ||(p == self) || (p->p_stat == SZOMB)
  || (p->p_shutdownstate == shutdownstate)
  ||((delayterm == 0) && ((p->p_lflag& P_LDELAYTERM) == P_LDELAYTERM))) {
   return(0);
  }
        else
                return(1);
}
