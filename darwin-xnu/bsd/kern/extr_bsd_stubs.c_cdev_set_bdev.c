
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chrtoblk_set (int,int) ;

__attribute__((used)) static int
cdev_set_bdev(int cdev, int bdev)
{
 return (chrtoblk_set(cdev, bdev));
}
