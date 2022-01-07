
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdevsw {int dummy; } ;


 struct bdevsw* bdevsw ;
 int bdevsw_isfree (int) ;
 int devsw_lock_list_mtx ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;

int
bdevsw_add(int index, struct bdevsw * bsw)
{
 lck_mtx_lock_spin(&devsw_lock_list_mtx);
 index = bdevsw_isfree(index);
 if (index < 0) {
  index = -1;
 } else {
  bdevsw[index] = *bsw;
 }
 lck_mtx_unlock(&devsw_lock_list_mtx);
 return (index);
}
