
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdevsw {int dummy; } ;


 struct bdevsw* bdevsw ;
 scalar_t__ memcmp (char*,char*,int) ;
 int nblkdev ;
 int nobdev ;

int
bdevsw_isfree(int index)
{
 struct bdevsw * devsw;

 if (index < 0) {
  if (index == -1)
   index = 1;
  else
   index = -index;
  devsw = &bdevsw[index];
  for (; index < nblkdev; index++, devsw++) {
   if (memcmp((char *)devsw, (char *)&nobdev, sizeof(struct bdevsw)) == 0)
    break;
  }
 }

 if (index < 0 || index >= nblkdev)
  return (-1);

 devsw = &bdevsw[index];
 if ((memcmp((char *)devsw, (char *)&nobdev, sizeof(struct bdevsw)) != 0)) {
  return (-1);
 }
 return (index);
}
