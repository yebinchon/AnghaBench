
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct eventqelt* tqh_first; } ;
struct socket {TYPE_2__ so_evlist; } ;
struct proc {int dummy; } ;
struct pipe {TYPE_2__ pipe_evlist; } ;
struct fileproc {scalar_t__ f_type; scalar_t__ f_data; int f_flags; } ;
struct TYPE_3__ {struct eventqelt* tqe_next; } ;
struct eventqelt {struct proc* ee_proc; TYPE_1__ ee_slist; } ;


 scalar_t__ DTYPE_PIPE ;
 scalar_t__ DTYPE_SOCKET ;
 int EINVAL ;
 int EVPROCDEQUE (struct proc*,struct eventqelt*) ;
 int FP_WAITEVENT ;
 int FREE (struct eventqelt*,int ) ;
 int M_TEMP ;
 int PIPE_LOCK (struct pipe*) ;
 int PIPE_UNLOCK (struct pipe*) ;
 int TAILQ_REMOVE (TYPE_2__*,struct eventqelt*,int ) ;
 int ee_slist ;
 int proc_fdlock (struct proc*) ;
 int proc_fdunlock (struct proc*) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;

int
waitevent_close(struct proc *p, struct fileproc *fp)
{
 struct eventqelt *evq;


 fp->f_flags &= ~FP_WAITEVENT;







 if (fp->f_type == DTYPE_PIPE) {
         PIPE_LOCK((struct pipe *)fp->f_data);
  evq = ((struct pipe *)fp->f_data)->pipe_evlist.tqh_first;
 }
 else {
  return(EINVAL);
 }
 proc_fdunlock(p);



 for ( ; evq != ((void*)0); evq = evq->ee_slist.tqe_next) {
         if (evq->ee_proc == p)
          break;
 }
 if (evq == ((void*)0)) {





          PIPE_UNLOCK((struct pipe *)fp->f_data);

  proc_fdlock(p);

  return(EINVAL);
 }
 EVPROCDEQUE(p, evq);







 {
  TAILQ_REMOVE(&((struct pipe *)fp->f_data)->pipe_evlist, evq, ee_slist);
  PIPE_UNLOCK((struct pipe *)fp->f_data);
 }
 FREE(evq, M_TEMP);

 proc_fdlock(p);

 return(0);
}
