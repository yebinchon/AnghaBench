
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdevsw {int dummy; } ;


 struct bdevsw* bdevsw ;
 int devsw_lock_list_mtx ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int nblkdev ;
 struct bdevsw nobdev ;

int
bdevsw_remove(int index, struct bdevsw * bsw)
{
 struct bdevsw * devsw;

 if (index < 0 || index >= nblkdev)
  return (-1);

 devsw = &bdevsw[index];
 lck_mtx_lock_spin(&devsw_lock_list_mtx);
 if ((memcmp((char *)devsw, (char *)bsw, sizeof(struct bdevsw)) != 0)) {
  index = -1;
 } else {
  bdevsw[index] = nobdev;
 }
 lck_mtx_unlock(&devsw_lock_list_mtx);
 return (index);
}
