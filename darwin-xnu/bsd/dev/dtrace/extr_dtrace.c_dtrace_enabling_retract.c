
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ dts_nretained; } ;
typedef TYPE_2__ dtrace_state_t ;
struct TYPE_9__ {TYPE_1__* dten_vstate; struct TYPE_9__* dten_next; } ;
typedef TYPE_3__ dtrace_enabling_t ;
struct TYPE_7__ {TYPE_2__* dtvs_state; } ;


 int ASSERT (int) ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int dtrace_enabling_destroy (TYPE_3__*) ;
 int dtrace_lock ;
 TYPE_3__* dtrace_retained ;

__attribute__((used)) static void
dtrace_enabling_retract(dtrace_state_t *state)
{
 dtrace_enabling_t *enab, *next;

 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);





 for (enab = dtrace_retained; enab != ((void*)0); enab = next) {
  next = enab->dten_next;





  ASSERT(enab->dten_vstate->dtvs_state != ((void*)0));

  if (enab->dten_vstate->dtvs_state == state) {
   ASSERT(state->dts_nretained > 0);
   dtrace_enabling_destroy(enab);
  }
 }

 ASSERT(state->dts_nretained == 0);
}
