
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdevsw {int dummy; } ;


 scalar_t__ cdev_set_bdev (int,int) ;
 int cdevsw_add (int,struct cdevsw*) ;
 int cdevsw_remove (int,struct cdevsw*) ;

int
cdevsw_add_with_bdev(int index, struct cdevsw * csw, int bdev)
{
 index = cdevsw_add(index, csw);
 if (index < 0) {
  return (index);
 }
 if (cdev_set_bdev(index, bdev) < 0) {
  cdevsw_remove(index, csw);
  return (-1);
 }
 return (index);
}
