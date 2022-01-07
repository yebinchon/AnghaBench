
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
typedef int dtrace_vstate_t ;
struct TYPE_10__ {scalar_t__ dte_size; TYPE_3__* dte_action_last; TYPE_3__* dte_action; TYPE_5__* dte_state; } ;
typedef TYPE_2__ dtrace_ecb_t ;
typedef int dtrace_difo_t ;
struct TYPE_9__ {int dtrd_format; } ;
struct TYPE_11__ {int dta_refcnt; int dta_kind; int * dta_difo; TYPE_1__ dta_rec; struct TYPE_11__* dta_next; } ;
typedef TYPE_3__ dtrace_action_t ;
struct TYPE_12__ {int dts_vstate; } ;


 int ASSERT (int) ;
 scalar_t__ DTRACEACT_ISAGG (int ) ;
 int dtrace_difo_release (int *,int *) ;
 int dtrace_ecb_aggregation_destroy (TYPE_2__*,TYPE_3__*) ;
 int dtrace_format_remove (TYPE_5__*,int ) ;
 int kmem_free (TYPE_3__*,int) ;

__attribute__((used)) static void
dtrace_ecb_action_remove(dtrace_ecb_t *ecb)
{
 dtrace_action_t *act = ecb->dte_action, *next;
 dtrace_vstate_t *vstate = &ecb->dte_state->dts_vstate;
 dtrace_difo_t *dp;
 uint16_t format;

 if (act != ((void*)0) && act->dta_refcnt > 1) {
  ASSERT(act->dta_next == ((void*)0) || act->dta_next->dta_refcnt == 1);
  act->dta_refcnt--;
 } else {
  for (; act != ((void*)0); act = next) {
   next = act->dta_next;
   ASSERT(next != ((void*)0) || act == ecb->dte_action_last);
   ASSERT(act->dta_refcnt == 1);

   if ((format = act->dta_rec.dtrd_format) != 0)
    dtrace_format_remove(ecb->dte_state, format);

   if ((dp = act->dta_difo) != ((void*)0))
    dtrace_difo_release(dp, vstate);

   if (DTRACEACT_ISAGG(act->dta_kind)) {
    dtrace_ecb_aggregation_destroy(ecb, act);
   } else {
    kmem_free(act, sizeof (dtrace_action_t));
   }
  }
 }

 ecb->dte_action = ((void*)0);
 ecb->dte_action_last = ((void*)0);
 ecb->dte_size = 0;
}
