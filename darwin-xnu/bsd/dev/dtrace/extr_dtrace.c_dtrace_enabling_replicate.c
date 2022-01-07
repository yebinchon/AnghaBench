
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int dts_vstate; } ;
typedef TYPE_2__ dtrace_state_t ;
struct TYPE_18__ {int dtpd_name; int dtpd_func; int dtpd_mod; int dtpd_provider; } ;
typedef TYPE_3__ dtrace_probedesc_t ;
struct TYPE_19__ {int dten_ndesc; TYPE_5__** dten_desc; TYPE_1__* dten_vstate; struct TYPE_19__* dten_next; } ;
typedef TYPE_4__ dtrace_enabling_t ;
struct TYPE_20__ {TYPE_3__ dted_probe; } ;
typedef TYPE_5__ dtrace_ecbdesc_t ;
struct TYPE_16__ {TYPE_2__* dtvs_state; } ;


 int ASSERT (int) ;
 scalar_t__ DTRACE_FUNCNAMELEN ;
 scalar_t__ DTRACE_MODNAMELEN ;
 scalar_t__ DTRACE_NAMELEN ;
 scalar_t__ DTRACE_PROVNAMELEN ;
 int ENOENT ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int dtrace_enabling_addlike (TYPE_4__*,TYPE_5__*,TYPE_3__*) ;
 TYPE_4__* dtrace_enabling_create (int *) ;
 int dtrace_enabling_destroy (TYPE_4__*) ;
 int dtrace_enabling_retain (TYPE_4__*) ;
 int dtrace_lock ;
 TYPE_4__* dtrace_retained ;
 scalar_t__ strlen (int ) ;
 scalar_t__ strncmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int
dtrace_enabling_replicate(dtrace_state_t *state, dtrace_probedesc_t *match,
    dtrace_probedesc_t *create)
{
 dtrace_enabling_t *new, *enab;
 int found = 0, err = ENOENT;

 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);
 ASSERT(strlen(match->dtpd_provider) < DTRACE_PROVNAMELEN);
 ASSERT(strlen(match->dtpd_mod) < DTRACE_MODNAMELEN);
 ASSERT(strlen(match->dtpd_func) < DTRACE_FUNCNAMELEN);
 ASSERT(strlen(match->dtpd_name) < DTRACE_NAMELEN);

 new = dtrace_enabling_create(&state->dts_vstate);





 for (enab = dtrace_retained; enab != ((void*)0); enab = enab->dten_next) {
  int i;





  ASSERT(enab->dten_vstate->dtvs_state != ((void*)0));

  if (enab->dten_vstate->dtvs_state != state)
   continue;





  for (i = 0; i < enab->dten_ndesc; i++) {
   dtrace_ecbdesc_t *ep = enab->dten_desc[i];
   dtrace_probedesc_t *pd = &ep->dted_probe;


   if (strncmp(pd->dtpd_provider, match->dtpd_provider, DTRACE_PROVNAMELEN))
    continue;

   if (strncmp(pd->dtpd_mod, match->dtpd_mod, DTRACE_MODNAMELEN))
    continue;

   if (strncmp(pd->dtpd_func, match->dtpd_func, DTRACE_FUNCNAMELEN))
    continue;

   if (strncmp(pd->dtpd_name, match->dtpd_name, DTRACE_NAMELEN))
    continue;





   found = 1;
   dtrace_enabling_addlike(new, ep, create);
  }
 }

 if (!found || (err = dtrace_enabling_retain(new)) != 0) {
  dtrace_enabling_destroy(new);
  return (err);
 }

 return (0);
}
