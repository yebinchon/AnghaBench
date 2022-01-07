
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdevsw {int dummy; } ;


 struct cdevsw* cdevsw ;
 scalar_t__* cdevsw_flags ;
 int devsw_lock_list_mtx ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int nchrdev ;
 struct cdevsw nocdev ;

int
cdevsw_remove(int index, struct cdevsw * csw)
{
 struct cdevsw * devsw;

 if (index < 0 || index >= nchrdev)
  return (-1);

 devsw = &cdevsw[index];
 lck_mtx_lock_spin(&devsw_lock_list_mtx);
 if ((memcmp((char *)devsw, (char *)csw, sizeof(struct cdevsw)) != 0)) {
  index = -1;
 } else {
  cdevsw[index] = nocdev;
  cdevsw_flags[index] = 0;
 }
 lck_mtx_unlock(&devsw_lock_list_mtx);
 return (index);
}
