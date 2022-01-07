
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint64_t ;
typedef int dev_t ;
struct TYPE_2__ {int mdFlags; unsigned int mdBase; int mdSize; int mdBDev; int mdCDev; int mdSecsize; int * mdcdevb; int * mdbdevb; } ;


 int DEVFS_BLOCK ;
 int DEVFS_CHAR ;
 int DEV_BSIZE ;
 int GID_OPERATOR ;
 int NB_MAX_MDEVICES ;
 int UID_ROOT ;
 scalar_t__ bdevsw_add (int,int *) ;
 scalar_t__ cdevsw_add_with_bdev (int,int *,scalar_t__) ;
 void* devfs_make_node (int,int ,int ,int ,int,char*,int) ;
 void* makedev (scalar_t__,int) ;
 int mdInited ;
 int mdPhys ;
 TYPE_1__* mdev ;
 scalar_t__ mdevBMajor ;
 scalar_t__ mdevCMajor ;
 int mdevbdevsw ;
 int mdevcdevsw ;
 int panic (char*,int,...) ;
 int printf (char*,...) ;

dev_t mdevadd(int devid, uint64_t base, unsigned int size, int phys) {

 int i;

 if(devid < 0) {

  devid = -1;
  for(i = 0; i < NB_MAX_MDEVICES; i++) {
   if(!(mdev[i].mdFlags & mdInited)) {
    if(devid < 0)devid = i;
    continue;
   }
   if(!(((base + size -1 ) < mdev[i].mdBase) || ((mdev[i].mdBase + mdev[i].mdSize - 1) < base))) {
    panic("mdevadd: attempt to add overlapping memory device at %016llX-%016llX\n", mdev[i].mdBase, mdev[i].mdBase + mdev[i].mdSize - 1);
   }
  }
  if(devid < 0) {
   panic("mdevadd: attempt to add more than %d memory devices\n", NB_MAX_MDEVICES);
  }
 }
 else {
  if(devid >= NB_MAX_MDEVICES) {
   panic("mdevadd: attempt to explicitly add a bogus memory device: %08X\n", devid);
  }
  if(mdev[devid].mdFlags & mdInited) {
   panic("mdevadd: attempt to explicitly add a previously defined memory device: %08X\n", devid);
  }
 }

 if(mdevBMajor < 0) {
  mdevBMajor = bdevsw_add(-1, &mdevbdevsw);
  if (mdevBMajor < 0) {
   printf("mdevadd: error - bdevsw_add() returned %d\n", mdevBMajor);
   return -1;
  }
 }

 if(mdevCMajor < 0) {
  mdevCMajor = cdevsw_add_with_bdev(-1, &mdevcdevsw, mdevBMajor);
  if (mdevCMajor < 0) {
   printf("ramdevice_init: error - cdevsw_add() returned %d\n", mdevCMajor);
   return -1;
  }
 }

 mdev[devid].mdBDev = makedev(mdevBMajor, devid);
 mdev[devid].mdbdevb = devfs_make_node(mdev[devid].mdBDev, DEVFS_BLOCK,
        UID_ROOT, GID_OPERATOR,
        0600, "md%d", devid);
 if (mdev[devid].mdbdevb == ((void*)0)) {
  printf("mdevadd: devfs_make_node for block failed!\n");
  return -1;
 }

 mdev[devid].mdCDev = makedev(mdevCMajor, devid);
 mdev[devid].mdcdevb = devfs_make_node(mdev[devid].mdCDev, DEVFS_CHAR,
        UID_ROOT, GID_OPERATOR,
        0600, "rmd%d", devid);
 if (mdev[devid].mdcdevb == ((void*)0)) {
  printf("mdevadd: devfs_make_node for character failed!\n");
  return -1;
 }

 mdev[devid].mdBase = base;
 mdev[devid].mdSize = size;
 mdev[devid].mdSecsize = DEV_BSIZE;
 if(phys) mdev[devid].mdFlags |= mdPhys;
 mdev[devid].mdFlags |= mdInited;
 printf("Added memory device md%x/rmd%x (%08X/%08X) at %016llX for %016llX\n",
     devid, devid, mdev[devid].mdBDev, mdev[devid].mdCDev, base << 12, (uint64_t)size << 12);
 return mdev[devid].mdBDev;
}
