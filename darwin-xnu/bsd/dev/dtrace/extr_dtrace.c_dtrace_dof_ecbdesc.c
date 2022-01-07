
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
typedef int dtrace_vstate_t ;
typedef int dtrace_probedesc_t ;
typedef int dtrace_predicate_t ;
struct TYPE_13__ {int * dtpdd_predicate; } ;
struct TYPE_14__ {int * dted_action; TYPE_1__ dted_pred; int dted_probe; int dted_uarg; } ;
typedef TYPE_2__ dtrace_ecbdesc_t ;
struct TYPE_15__ {int dofs_size; int dofs_align; scalar_t__ dofs_offset; } ;
typedef TYPE_3__ dof_sec_t ;
typedef int dof_hdr_t ;
struct TYPE_16__ {scalar_t__ dofe_probes; scalar_t__ dofe_pred; scalar_t__ dofe_actions; int dofe_uarg; } ;
typedef TYPE_4__ dof_ecbdesc_t ;
typedef int cred_t ;


 scalar_t__ DOF_SECIDX_NONE ;
 int DOF_SECT_ACTDESC ;
 int DOF_SECT_DIFOHDR ;
 int DOF_SECT_PROBEDESC ;
 int KM_SLEEP ;
 int * dtrace_dof_actdesc (int *,TYPE_3__*,int *,int *) ;
 int dtrace_dof_error (int *,char*) ;
 int * dtrace_dof_predicate (int *,TYPE_3__*,int *,int *) ;
 int * dtrace_dof_probedesc (int *,TYPE_3__*,int *) ;
 TYPE_3__* dtrace_dof_sect (int *,int ,scalar_t__) ;
 int dtrace_predicate_release (int *,int *) ;
 int kmem_free (TYPE_2__*,int) ;
 TYPE_2__* kmem_zalloc (int,int ) ;

__attribute__((used)) static dtrace_ecbdesc_t *
dtrace_dof_ecbdesc(dof_hdr_t *dof, dof_sec_t *sec, dtrace_vstate_t *vstate,
    cred_t *cr)
{
 dtrace_ecbdesc_t *ep;
 dof_ecbdesc_t *ecb;
 dtrace_probedesc_t *desc;
 dtrace_predicate_t *pred = ((void*)0);

 if (sec->dofs_size < sizeof (dof_ecbdesc_t)) {
  dtrace_dof_error(dof, "truncated ECB description");
  return (((void*)0));
 }

 if (sec->dofs_align != sizeof (uint64_t)) {
  dtrace_dof_error(dof, "bad alignment in ECB description");
  return (((void*)0));
 }

 ecb = (dof_ecbdesc_t *)((uintptr_t)dof + (uintptr_t)sec->dofs_offset);
 sec = dtrace_dof_sect(dof, DOF_SECT_PROBEDESC, ecb->dofe_probes);

 if (sec == ((void*)0))
  return (((void*)0));

 ep = kmem_zalloc(sizeof (dtrace_ecbdesc_t), KM_SLEEP);
 ep->dted_uarg = ecb->dofe_uarg;
 desc = &ep->dted_probe;

 if (dtrace_dof_probedesc(dof, sec, desc) == ((void*)0))
  goto err;

 if (ecb->dofe_pred != DOF_SECIDX_NONE) {
  if ((sec = dtrace_dof_sect(dof,
      DOF_SECT_DIFOHDR, ecb->dofe_pred)) == ((void*)0))
   goto err;

  if ((pred = dtrace_dof_predicate(dof, sec, vstate, cr)) == ((void*)0))
   goto err;

  ep->dted_pred.dtpdd_predicate = pred;
 }

 if (ecb->dofe_actions != DOF_SECIDX_NONE) {
  if ((sec = dtrace_dof_sect(dof,
      DOF_SECT_ACTDESC, ecb->dofe_actions)) == ((void*)0))
   goto err;

  ep->dted_action = dtrace_dof_actdesc(dof, sec, vstate, cr);

  if (ep->dted_action == ((void*)0))
   goto err;
 }

 return (ep);

err:
 if (pred != ((void*)0))
  dtrace_predicate_release(pred, vstate);
 kmem_free(ep, sizeof (dtrace_ecbdesc_t));
 return (((void*)0));
}
