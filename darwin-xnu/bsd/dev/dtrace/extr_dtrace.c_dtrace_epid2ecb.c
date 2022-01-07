
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dts_necbs; TYPE_2__** dts_ecbs; } ;
typedef TYPE_1__ dtrace_state_t ;
typedef int dtrace_epid_t ;
struct TYPE_6__ {int dte_epid; } ;
typedef TYPE_2__ dtrace_ecb_t ;


 int ASSERT (int) ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int dtrace_lock ;

__attribute__((used)) static dtrace_ecb_t *
dtrace_epid2ecb(dtrace_state_t *state, dtrace_epid_t id)
{
 dtrace_ecb_t *ecb;
#pragma unused(ecb)

 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

 if (id == 0 || id > (dtrace_epid_t)state->dts_necbs)
  return (((void*)0));

 ASSERT(state->dts_necbs > 0 && state->dts_ecbs != ((void*)0));
 ASSERT((ecb = state->dts_ecbs[id - 1]) == ((void*)0) || ecb->dte_epid == id);

 return (state->dts_ecbs[id - 1]);
}
