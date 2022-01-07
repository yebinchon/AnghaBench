
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;
typedef int lck_grp_t ;


 int kfree (void*,int) ;
 int lck_mtx_destroy (int *,int *) ;

void
lck_mtx_free(
      lck_mtx_t * lck,
      lck_grp_t * grp)
{
 lck_mtx_destroy(lck, grp);
 kfree((void *) lck, sizeof(lck_mtx_t));
}
