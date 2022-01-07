
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dev_t ;
struct TYPE_2__ {int mdFlags; int mdBDev; } ;


 int NB_MAX_MDEVICES ;
 int mdInited ;
 TYPE_1__* mdev ;

dev_t mdevlookup(int devid) {

 if((devid < 0) || (devid >= NB_MAX_MDEVICES)) return -1;
 if(!(mdev[devid].mdFlags & mdInited)) return -1;
 return mdev[devid].mdBDev;
}
