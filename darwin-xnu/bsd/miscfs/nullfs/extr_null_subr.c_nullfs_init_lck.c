
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;


 int lck_mtx_init (int *,scalar_t__,scalar_t__) ;
 scalar_t__ null_hashlck_attr ;
 scalar_t__ null_hashlck_grp ;

int
nullfs_init_lck(lck_mtx_t * lck)
{
 int error = 1;
 if (lck && null_hashlck_grp && null_hashlck_attr) {
  lck_mtx_init(lck, null_hashlck_grp, null_hashlck_attr);
  error = 0;
 }
 return error;
}
