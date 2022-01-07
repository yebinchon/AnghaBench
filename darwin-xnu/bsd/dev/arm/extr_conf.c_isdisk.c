
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t dev_t ;
struct TYPE_2__ {int d_type; } ;


 int D_DISK ;
 size_t NODEV ;


 TYPE_1__* bdevsw ;
 size_t chrtoblk (size_t) ;
 size_t major (size_t) ;

int
isdisk(dev_t dev, int type)
{
 dev_t maj = major(dev);

 switch (type) {
 case 128:
  maj = chrtoblk(maj);
  if (maj == NODEV) {
   break;
  }

 case 129:
  if (bdevsw[maj].d_type == D_DISK) {
   return (1);
  }
  break;
 }
 return (0);
}
