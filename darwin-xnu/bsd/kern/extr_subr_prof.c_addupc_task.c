
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ user_addr_t ;
typedef scalar_t__ u_short ;
typedef scalar_t__ u_int ;
struct user_uprof {scalar_t__ pr_base; scalar_t__ pr_size; scalar_t__ pr_scale; struct user_uprof* pr_next; } ;
struct uprof {scalar_t__ pr_base; scalar_t__ pr_size; scalar_t__ pr_scale; struct uprof* pr_next; } ;
struct proc {int p_flag; TYPE_1__* p_stats; } ;
typedef int count ;
typedef int caddr_t ;
struct TYPE_2__ {struct user_uprof p_prof; struct user_uprof user_p_prof; } ;


 scalar_t__ CAST_USER_ADDR_T (short*) ;
 scalar_t__ PC_TO_INDEX (scalar_t__,struct user_uprof*) ;
 int P_PROFIL ;
 scalar_t__ copyin (scalar_t__,int ,int) ;
 scalar_t__ copyout (int ,scalar_t__,int) ;
 scalar_t__ proc_is64bit (struct proc*) ;
 int stopprofclock (struct proc*) ;

void
addupc_task(struct proc *p, user_addr_t pc, u_int ticks)
{
 user_addr_t off;
 u_short count;


 if ((p->p_flag & P_PROFIL) == 0 || ticks == 0)
  return;

 if (proc_is64bit(p)) {
        struct user_uprof *prof;
        user_addr_t cell;

        for (prof = &p->p_stats->user_p_prof; prof; prof = prof->pr_next) {
            off = PC_TO_INDEX(pc, prof);
            cell = (prof->pr_base + off);
            if (cell >= prof->pr_base &&
                cell < (prof->pr_size + prof->pr_base)) {
                if (copyin(cell, (caddr_t) &count, sizeof(count)) == 0) {
                    count += ticks;
                    if(copyout((caddr_t) &count, cell, sizeof(count)) == 0)
                        return;
                }
                p->p_stats->user_p_prof.pr_scale = 0;
                stopprofclock(p);
                break;
            }
        }
 }
 else {
        struct uprof *prof;
        short *cell;

        for (prof = &p->p_stats->p_prof; prof; prof = prof->pr_next) {
            off = PC_TO_INDEX(pc,prof);
            cell = (short *)(prof->pr_base + off);
            if (cell >= (short *)prof->pr_base &&
                cell < (short*)(prof->pr_size + prof->pr_base)) {
                if (copyin(CAST_USER_ADDR_T(cell), (caddr_t) &count, sizeof(count)) == 0) {
                    count += ticks;
                    if(copyout((caddr_t) &count, CAST_USER_ADDR_T(cell), sizeof(count)) == 0)
                        return;
                }
                p->p_stats->p_prof.pr_scale = 0;
                stopprofclock(p);
                break;
            }
        }
 }
}
