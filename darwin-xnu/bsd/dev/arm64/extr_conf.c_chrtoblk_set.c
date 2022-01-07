
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NODEV ;
 int* chrtoblktab ;
 int nblkdev ;
 int nchrdev ;

int
chrtoblk_set(int cdev, int bdev)
{
 if (cdev >= nchrdev)
  return (-1);
 if (bdev != NODEV && bdev >= nblkdev)
  return (-1);
 chrtoblktab[cdev] = bdev;
 return 0;
}
