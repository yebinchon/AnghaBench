
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_memstat_dirty; } ;


 int P_DIRTY_IS_DIRTY ;
 int P_DIRTY_TERMINATED ;
 int P_DIRTY_TRACK ;
 int SIGKILL ;
 int SIGTERM ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

int
memorystatus_on_terminate(proc_t p) {
 int sig;

 proc_list_lock();

 p->p_memstat_dirty |= P_DIRTY_TERMINATED;

 if ((p->p_memstat_dirty & (P_DIRTY_TRACK|P_DIRTY_IS_DIRTY)) == P_DIRTY_TRACK) {

  sig = SIGKILL;
 } else {

  sig = SIGTERM;
 }

 proc_list_unlock();

 return sig;
}
