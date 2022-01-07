
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_grp_attr_t ;


 int TAILQ_INIT (int *) ;
 int kauth_cred_init () ;
 int kauth_dangling_listeners ;
 int kauth_groups_init () ;
 int kauth_identity_init () ;
 int * kauth_lck_grp ;
 int kauth_resolver_init () ;
 int kauth_scope_init () ;
 int kauth_scopes ;
 int * lck_grp_alloc_init (char*,int *) ;
 int * lck_grp_attr_alloc_init () ;
 int lck_grp_attr_free (int *) ;
 int lck_grp_free (int *) ;

void
kauth_init(void)
{
 lck_grp_attr_t *grp_attributes;

 TAILQ_INIT(&kauth_scopes);
 TAILQ_INIT(&kauth_dangling_listeners);


 grp_attributes = lck_grp_attr_alloc_init();
 kauth_lck_grp = lck_grp_alloc_init("kauth", grp_attributes);
 lck_grp_attr_free(grp_attributes);


 kauth_cred_init();




 kauth_scope_init();




 lck_grp_free(kauth_lck_grp);
 kauth_lck_grp = ((void*)0);
}
