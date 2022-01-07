
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct eventqelt* tqh_first; } ;
struct socket {TYPE_2__ so_evlist; } ;
struct TYPE_3__ {struct eventqelt* tqe_next; } ;
struct eventqelt {int ee_flags; int ee_proc; TYPE_1__ ee_slist; } ;
typedef int proc_t ;


 int EVPROCDEQUE (int ,struct eventqelt*) ;
 int EV_QUEUED ;
 int FREE (struct eventqelt*,int ) ;
 int M_TEMP ;
 int TAILQ_REMOVE (TYPE_2__*,struct eventqelt*,int ) ;
 int ee_slist ;

void
evsofree(struct socket *sp)
{
        struct eventqelt *evq, *next;
 proc_t p;

 if (sp == ((void*)0))
         return;

 for (evq = sp->so_evlist.tqh_first; evq != ((void*)0); evq = next) {
         next = evq->ee_slist.tqe_next;
  p = evq->ee_proc;

  if (evq->ee_flags & EV_QUEUED) {
          EVPROCDEQUE(p, evq);
  }
  TAILQ_REMOVE(&sp->so_evlist, evq, ee_slist);
  FREE(evq, M_TEMP);
 }
}
