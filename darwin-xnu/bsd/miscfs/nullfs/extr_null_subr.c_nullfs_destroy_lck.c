
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;


 int lck_mtx_destroy (int *,scalar_t__) ;
 scalar_t__ null_hashlck_grp ;

int
nullfs_destroy_lck(lck_mtx_t * lck)
{
 int error = 1;
 if (lck && null_hashlck_grp) {
  lck_mtx_destroy(lck, null_hashlck_grp);
  error = 0;
 }
 return error;
}
