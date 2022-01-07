
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int NODEV ;
 int* chrtoblktab ;
 size_t major (int) ;
 int makedev (int,int ) ;
 int minor (int) ;
 size_t nchrdev ;

dev_t
chrtoblk(dev_t dev)
{
 int blkmaj;

 if (major(dev) >= nchrdev)
  return(NODEV);
 blkmaj = chrtoblktab[major(dev)];
 if (blkmaj == NODEV)
  return(NODEV);
 return(makedev(blkmaj, minor(dev)));
}
