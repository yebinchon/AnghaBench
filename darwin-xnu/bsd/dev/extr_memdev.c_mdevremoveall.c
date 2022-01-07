
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mdFlags; scalar_t__ mdcdevb; scalar_t__ mdbdevb; scalar_t__ mdCDev; scalar_t__ mdBDev; scalar_t__ mdSecsize; scalar_t__ mdSize; scalar_t__ mdBase; } ;


 int NB_MAX_MDEVICES ;
 int devfs_remove (scalar_t__) ;
 int mdInited ;
 TYPE_1__* mdev ;

void mdevremoveall(void) {

 int i;

 for(i = 0; i < NB_MAX_MDEVICES; i++) {
  if(!(mdev[i].mdFlags & mdInited)) continue;

  devfs_remove(mdev[i].mdbdevb);
  devfs_remove(mdev[i].mdcdevb);

  mdev[i].mdBase = 0;
  mdev[i].mdSize = 0;
  mdev[i].mdSecsize = 0;
  mdev[i].mdFlags = 0;
  mdev[i].mdBDev = 0;
  mdev[i].mdCDev = 0;
  mdev[i].mdbdevb = 0;
  mdev[i].mdcdevb = 0;
 }
}
