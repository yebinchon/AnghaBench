
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_rw_t ;
typedef int lck_grp_t ;


 int kfree (int *,int) ;
 int lck_rw_destroy (int *,int *) ;

void
lck_rw_free(
 lck_rw_t *lck,
 lck_grp_t *grp) {
 lck_rw_destroy(lck, grp);
 kfree(lck, sizeof(lck_rw_t));
}
