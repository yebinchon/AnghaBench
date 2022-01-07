
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdevsw {int dummy; } ;


 struct cdevsw* cdevsw ;
 int cdevsw_isfree (int) ;
 int devsw_lock_list_mtx ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;

int
cdevsw_add(int index, struct cdevsw * csw)
{
 lck_mtx_lock_spin(&devsw_lock_list_mtx);
 index = cdevsw_isfree(index);
 if (index < 0) {
  index = -1;
 } else {
  cdevsw[index] = *csw;
 }
 lck_mtx_unlock(&devsw_lock_list_mtx);
 return (index);
}
