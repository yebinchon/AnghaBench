
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct eventqelt {int ee_flags; int ee_eventmask; TYPE_1__* ee_proc; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_4__ {int p_evlist; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int DBG_MISC_ENQUEUE ;
 int EV_QUEUED ;
 int KERNEL_DEBUG (int,int ,int,int ,int ,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct eventqelt*,int ) ;
 int assert (struct eventqelt*) ;
 int ee_plist ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;
 int wakeup (int *) ;

__attribute__((used)) static void
evprocenque(struct eventqelt *evq)
{
        proc_t p;

 assert(evq);
 p = evq->ee_proc;

 KERNEL_DEBUG(DBG_MISC_ENQUEUE|DBG_FUNC_START, (uint32_t)evq, evq->ee_flags, evq->ee_eventmask,0,0);

 proc_lock(p);

 if (evq->ee_flags & EV_QUEUED) {
         proc_unlock(p);

         KERNEL_DEBUG(DBG_MISC_ENQUEUE|DBG_FUNC_END, 0,0,0,0,0);
  return;
 }
 evq->ee_flags |= EV_QUEUED;

 TAILQ_INSERT_TAIL(&p->p_evlist, evq, ee_plist);

 proc_unlock(p);

 wakeup(&p->p_evlist);

 KERNEL_DEBUG(DBG_MISC_ENQUEUE|DBG_FUNC_END, 0,0,0,0,0);
}
