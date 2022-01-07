
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dev_t ;
struct TYPE_2__ {int mdFlags; int mdSecsize; } ;


 int ENXIO ;
 int NB_MAX_MDEVICES ;
 int mdInited ;
 TYPE_1__* mdev ;
 int minor (int ) ;

__attribute__((used)) static int mdevsize(dev_t dev) {

 int devid;

 devid = minor(dev);
 if (devid >= NB_MAX_MDEVICES) return (ENXIO);

 if ((mdev[devid].mdFlags & mdInited) == 0) return(-1);

 return(mdev[devid].mdSecsize);
}
