
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ cnt; int size; } ;
struct TYPE_5__ {struct eventqelt* tqh_first; } ;
struct pipe {int pipe_state; TYPE_3__ pipe_buffer; TYPE_1__ pipe_evlist; } ;
struct TYPE_8__ {int er_eventbits; scalar_t__ er_wcnt; scalar_t__ er_rcnt; } ;
struct TYPE_6__ {struct eventqelt* tqe_next; } ;
struct eventqelt {scalar_t__ ee_eventmask; TYPE_4__ ee_req; TYPE_2__ ee_slist; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int DBG_MISC_POST ;

 int EV_RE ;
 int EV_RESET ;


 int EV_WR ;
 int KERNEL_DEBUG (int,int,int,int,int,int ) ;
 scalar_t__ MAX (int ,int ) ;
 scalar_t__ PIPE_BUF ;
 int PIPE_EOF ;
 int PIPE_SIZE ;
 int evprocenque (struct eventqelt*) ;

void
postpipeevent(struct pipe *pipep, int event)
{
 int mask;
 struct eventqelt *evq;

 if (pipep == ((void*)0))
         return;
 KERNEL_DEBUG(DBG_MISC_POST|DBG_FUNC_START, event,0,0,1,0);

 for (evq = pipep->pipe_evlist.tqh_first;
      evq != ((void*)0); evq = evq->ee_slist.tqe_next) {

         if (evq->ee_eventmask == 0)
          continue;
         mask = 0;

  switch (event & (129 | 130 | 128)) {

  case 129:
    if ((evq->ee_eventmask & EV_RE) && pipep->pipe_buffer.cnt) {
            mask |= EV_RE;
     evq->ee_req.er_rcnt = pipep->pipe_buffer.cnt;
    }
    if ((evq->ee_eventmask & EV_WR) &&
        (MAX(pipep->pipe_buffer.size,PIPE_SIZE) - pipep->pipe_buffer.cnt) >= PIPE_BUF) {

            if (pipep->pipe_state & PIPE_EOF) {
             mask |= EV_WR|EV_RESET;
      break;
     }
     mask |= EV_WR;
     evq->ee_req.er_wcnt = MAX(pipep->pipe_buffer.size, PIPE_SIZE) - pipep->pipe_buffer.cnt;
    }
    break;

  case 128:
  case 130:
    if ((evq->ee_eventmask & EV_RE)) {
            mask |= EV_RE|130;
    }
    if ((evq->ee_eventmask & EV_WR)) {
            mask |= EV_WR|128;
    }
    break;

  default:
    return;
  }
  if (mask) {




          evq->ee_eventmask = 0;
          evq->ee_req.er_eventbits |= mask;

   KERNEL_DEBUG(DBG_MISC_POST, (uint32_t)evq, evq->ee_req.er_eventbits, mask, 1,0);

   evprocenque(evq);
  }
 }
 KERNEL_DEBUG(DBG_MISC_POST|DBG_FUNC_END, 0,0,0,1,0);
}
