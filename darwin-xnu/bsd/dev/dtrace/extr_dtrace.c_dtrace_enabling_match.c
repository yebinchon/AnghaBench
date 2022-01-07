
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ (* dmc_func ) (int *,int ) ;int dmc_data; } ;
typedef TYPE_1__ dtrace_match_cond_t ;
struct TYPE_9__ {int dten_ndesc; int dten_error; TYPE_3__* dten_current; TYPE_3__** dten_desc; } ;
typedef TYPE_2__ dtrace_enabling_t ;
struct TYPE_10__ {int dted_probegen; int dted_probe; } ;
typedef TYPE_3__ dtrace_ecbdesc_t ;


 int CE_WARN ;
 int EBUSY ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int cmn_err (int ,char*,void*,int) ;
 int cpu_lock ;
 int dtrace_lock ;
 int dtrace_probe_enable (int *,TYPE_2__*,TYPE_3__*) ;
 int dtrace_probegen ;
 scalar_t__ stub1 (int *,int ) ;

__attribute__((used)) static int
dtrace_enabling_match(dtrace_enabling_t *enab, int *nmatched, dtrace_match_cond_t *cond)
{
 int i = 0;
 int total_matched = 0, matched = 0;

 LCK_MTX_ASSERT(&cpu_lock, LCK_MTX_ASSERT_OWNED);
 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

 for (i = 0; i < enab->dten_ndesc; i++) {
  dtrace_ecbdesc_t *ep = enab->dten_desc[i];

  enab->dten_current = ep;
  enab->dten_error = 0;






  if (cond && (cond->dmc_func(&ep->dted_probe, cond->dmc_data) == 0)) {
   continue;
  }




  if ((matched = dtrace_probe_enable(&ep->dted_probe, enab, ep)) < 0)
   return (EBUSY);

  total_matched += matched;

  if (enab->dten_error != 0) {
   if (nmatched == ((void*)0)) {
    cmn_err(CE_WARN, "dtrace_enabling_match() "
        "error on %p: %d", (void *)ep,
        enab->dten_error);
   }

   return (enab->dten_error);
  }

  ep->dted_probegen = dtrace_probegen;
 }

 if (nmatched != ((void*)0))
  *nmatched = total_matched;

 return (0);
}
