
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int user_addr_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct time_value {int seconds; int microseconds; } ;
struct proc {int p_flag; TYPE_2__* p_stats; } ;
struct TYPE_3__ {struct timeval ru_stime; } ;
struct TYPE_4__ {TYPE_1__ p_ru; } ;


 int P_PROFIL ;
 int addupc_task (struct proc*,int ,int) ;
 struct proc* current_proc () ;
 int tick ;

void
bsd_uprofil(struct time_value *syst, user_addr_t pc)
{
 struct proc *p = current_proc();
 int ticks;
 struct timeval *tv;
 struct timeval st;

 if (p == ((void*)0))
         return;
 if ( !(p->p_flag & P_PROFIL))
         return;

 st.tv_sec = syst->seconds;
 st.tv_usec = syst->microseconds;

 tv = &(p->p_stats->p_ru.ru_stime);

 ticks = ((tv->tv_sec - st.tv_sec) * 1000 +
  (tv->tv_usec - st.tv_usec) / 1000) /
  (tick / 1000);
 if (ticks)
  addupc_task(p, pc, ticks);
}
