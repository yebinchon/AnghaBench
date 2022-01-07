
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int microseconds; int seconds; } ;
typedef TYPE_3__ time_value_t ;
struct timeval {int tv_usec; int tv_sec; } ;
struct proc {int p_flag; TYPE_2__* p_stats; } ;
struct TYPE_5__ {struct timeval ru_stime; } ;
struct TYPE_6__ {TYPE_1__ p_ru; } ;


 int P_PROFIL ;
 struct proc* current_proc () ;

void
get_procrustime(time_value_t *tv)
{
 struct proc *p = current_proc();
 struct timeval st;

 if (p == ((void*)0))
  return;
 if ( !(p->p_flag & P_PROFIL))
         return;


 st = p->p_stats->p_ru.ru_stime;


 tv->seconds = st.tv_sec;
 tv->microseconds = st.tv_usec;
}
