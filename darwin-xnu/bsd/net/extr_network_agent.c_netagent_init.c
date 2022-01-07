
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ errno_t ;


 scalar_t__ ENOMEM ;
 int LIST_INIT (int *) ;
 int LOG_ERR ;
 int NETAGENTLOG0 (int ,char*) ;
 int NETAGENT_CONTROL_NAME ;
 int ctl_deregister (int *) ;
 int * lck_attr_alloc_init () ;
 int lck_attr_free (int *) ;
 int * lck_grp_alloc_init (int ,int *) ;
 int * lck_grp_attr_alloc_init () ;
 int lck_grp_attr_free (int *) ;
 int lck_grp_free (int *) ;
 int lck_rw_init (int *,int *,int *) ;
 int master_netagent_list ;
 int * netagent_grp_attr ;
 int * netagent_kctlref ;
 int netagent_lock ;
 int * netagent_mtx_attr ;
 int * netagent_mtx_grp ;
 scalar_t__ netagent_register_control () ;

errno_t
netagent_init(void)
{
 errno_t result = 0;

 result = netagent_register_control();
 if (result != 0) {
  goto done;
 }

 netagent_grp_attr = lck_grp_attr_alloc_init();
 if (netagent_grp_attr == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "lck_grp_attr_alloc_init failed");
  result = ENOMEM;
  goto done;
 }

 netagent_mtx_grp = lck_grp_alloc_init(NETAGENT_CONTROL_NAME, netagent_grp_attr);
 if (netagent_mtx_grp == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "lck_grp_alloc_init failed");
  result = ENOMEM;
  goto done;
 }

 netagent_mtx_attr = lck_attr_alloc_init();
 if (netagent_mtx_attr == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "lck_attr_alloc_init failed");
  result = ENOMEM;
  goto done;
 }

 lck_rw_init(&netagent_lock, netagent_mtx_grp, netagent_mtx_attr);

 LIST_INIT(&master_netagent_list);

done:
 if (result != 0) {
  if (netagent_mtx_attr != ((void*)0)) {
   lck_attr_free(netagent_mtx_attr);
   netagent_mtx_attr = ((void*)0);
  }
  if (netagent_mtx_grp != ((void*)0)) {
   lck_grp_free(netagent_mtx_grp);
   netagent_mtx_grp = ((void*)0);
  }
  if (netagent_grp_attr != ((void*)0)) {
   lck_grp_attr_free(netagent_grp_attr);
   netagent_grp_attr = ((void*)0);
  }
  if (netagent_kctlref != ((void*)0)) {
   ctl_deregister(netagent_kctlref);
   netagent_kctlref = ((void*)0);
  }
 }
 return (result);
}
