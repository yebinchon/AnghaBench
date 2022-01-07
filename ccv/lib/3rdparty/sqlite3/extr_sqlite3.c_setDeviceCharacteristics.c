
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sectorSize; int ctrlFlags; int deviceCharacteristics; int h; } ;
typedef TYPE_1__ unixFile ;
typedef int u32 ;


 int F2FS_FEATURE_ATOMIC_WRITE ;
 int F2FS_IOC_GET_FEATURES ;
 scalar_t__ SQLITE_DEFAULT_SECTOR_SIZE ;
 int SQLITE_IOCAP_BATCH_ATOMIC ;
 int SQLITE_IOCAP_POWERSAFE_OVERWRITE ;
 int UNIXFILE_PSOW ;
 int assert (int) ;
 int osIoctl (int ,int ,int*) ;

__attribute__((used)) static void setDeviceCharacteristics(unixFile *pFd){
  assert( pFd->deviceCharacteristics==0 || pFd->sectorSize!=0 );
  if( pFd->sectorSize==0 ){
    if( pFd->ctrlFlags & UNIXFILE_PSOW ){
      pFd->deviceCharacteristics |= SQLITE_IOCAP_POWERSAFE_OVERWRITE;
    }

    pFd->sectorSize = SQLITE_DEFAULT_SECTOR_SIZE;
  }
}
