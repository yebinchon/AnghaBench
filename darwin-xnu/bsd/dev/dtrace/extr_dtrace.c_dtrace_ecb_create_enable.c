
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int dtrace_state_t ;
struct TYPE_9__ {scalar_t__ dtpr_gen; } ;
typedef TYPE_2__ dtrace_probe_t ;
struct TYPE_10__ {TYPE_1__* dten_vstate; } ;
typedef TYPE_3__ dtrace_enabling_t ;
struct TYPE_11__ {scalar_t__ dted_probegen; } ;
typedef TYPE_4__ dtrace_ecbdesc_t ;
typedef int dtrace_ecb_t ;
struct TYPE_8__ {int * dtvs_state; } ;


 int ASSERT (int ) ;
 int DTRACE_MATCH_DONE ;
 int DTRACE_MATCH_FAIL ;
 int DTRACE_MATCH_NEXT ;
 int * dtrace_ecb_create (int *,TYPE_2__*,TYPE_3__*) ;
 scalar_t__ dtrace_ecb_enable (int *) ;

__attribute__((used)) static int
dtrace_ecb_create_enable(dtrace_probe_t *probe, void *arg1, void *arg2)
{
 dtrace_ecb_t *ecb;
 dtrace_enabling_t *enab = arg1;
 dtrace_ecbdesc_t *ep = arg2;
 dtrace_state_t *state = enab->dten_vstate->dtvs_state;

 ASSERT(state != ((void*)0));

 if (probe != ((void*)0) && ep != ((void*)0) && probe->dtpr_gen < ep->dted_probegen) {





  return (DTRACE_MATCH_NEXT);
 }

 if ((ecb = dtrace_ecb_create(state, probe, enab)) == ((void*)0))
  return (DTRACE_MATCH_DONE);

 if (dtrace_ecb_enable(ecb) < 0)
               return (DTRACE_MATCH_FAIL);

 return (DTRACE_MATCH_NEXT);
}
