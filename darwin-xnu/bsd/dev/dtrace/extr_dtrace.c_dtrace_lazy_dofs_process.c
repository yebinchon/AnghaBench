
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* p_dtrace_helpers; TYPE_3__* p_dtrace_lazy_dofs; } ;
typedef TYPE_1__ proc_t ;
struct TYPE_15__ {int dthps_generation; } ;
typedef TYPE_2__ dtrace_helpers_t ;
struct TYPE_16__ {unsigned int dofiod_count; TYPE_4__* dofiod_helpers; } ;
typedef TYPE_3__ dof_ioctl_data_t ;
struct TYPE_17__ {scalar_t__ dofhp_dof; int dofhp_addr; } ;
typedef TYPE_4__ dof_helper_t ;
typedef int dof_hdr_t ;


 int ASSERT (int) ;
 int DOF_IOCTL_DATA_T_SIZE (int) ;
 scalar_t__ DTRACE_DOF_MODE_LAZY_OFF ;
 int * dtrace_dof_copyin_from_proc (TYPE_1__*,int,int*) ;
 int dtrace_dof_error (int *,char*) ;
 scalar_t__ dtrace_dof_mode ;
 int dtrace_helper_slurp (TYPE_1__*,int *,TYPE_4__*) ;
 TYPE_2__* dtrace_helpers_create (TYPE_1__*) ;
 int dtrace_lock ;
 int dtrace_meta_lock ;
 int dtrace_sprlock (TYPE_1__*) ;
 int dtrace_sprunlock (TYPE_1__*) ;
 int kmem_free (TYPE_3__*,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

__attribute__((used)) static void
dtrace_lazy_dofs_process(proc_t *p) {





 dtrace_sprlock(p);


 ASSERT(p->p_dtrace_lazy_dofs == ((void*)0) || p->p_dtrace_helpers == ((void*)0));
 ASSERT(dtrace_dof_mode == DTRACE_DOF_MODE_LAZY_OFF);

 dof_ioctl_data_t* lazy_dofs = p->p_dtrace_lazy_dofs;
 p->p_dtrace_lazy_dofs = ((void*)0);

 dtrace_sprunlock(p);
 lck_mtx_lock(&dtrace_meta_lock);



 if (lazy_dofs != ((void*)0)) {
  unsigned int i;
  int rval;

  for (i=0; i<lazy_dofs->dofiod_count; i++) {



   ASSERT(i >= (lazy_dofs->dofiod_count - 1) || lazy_dofs->dofiod_helpers[i].dofhp_dof < lazy_dofs->dofiod_helpers[i+1].dofhp_dof);

   dof_helper_t *dhp = &lazy_dofs->dofiod_helpers[i];




   int generation = dhp->dofhp_dof;
   dhp->dofhp_dof = dhp->dofhp_addr;

   dof_hdr_t *dof = dtrace_dof_copyin_from_proc(p, dhp->dofhp_dof, &rval);

   if (dof != ((void*)0)) {
    dtrace_helpers_t *help;

    lck_mtx_lock(&dtrace_lock);




    if ((help = p->p_dtrace_helpers) == ((void*)0))
     help = dtrace_helpers_create(p);






    if (help->dthps_generation <= generation) {
     help->dthps_generation = generation;





     if ((rval = dtrace_helper_slurp(p, dof, dhp)) != generation) {
      dtrace_dof_error(((void*)0), "returned value did not match expected generation");
     }
    }

    lck_mtx_unlock(&dtrace_lock);
   }
  }
  lck_mtx_unlock(&dtrace_meta_lock);
  kmem_free(lazy_dofs, DOF_IOCTL_DATA_T_SIZE(lazy_dofs->dofiod_count));
 } else {
  lck_mtx_unlock(&dtrace_meta_lock);
 }
}
