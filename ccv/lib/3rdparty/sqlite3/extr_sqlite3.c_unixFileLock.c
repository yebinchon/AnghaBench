
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bProcessLock; scalar_t__ nLock; } ;
typedef TYPE_1__ unixInodeInfo ;
struct TYPE_6__ {int ctrlFlags; int h; TYPE_1__* pInode; } ;
typedef TYPE_2__ unixFile ;
struct flock {int l_type; int l_len; int l_start; int l_whence; } ;


 int F_WRLCK ;
 int SEEK_SET ;
 int SHARED_FIRST ;
 int SHARED_SIZE ;
 int UNIXFILE_EXCL ;
 int UNIXFILE_RDONLY ;
 int assert (int) ;
 int osSetPosixAdvisoryLock (int ,struct flock*,TYPE_2__*) ;
 int unixMutexHeld () ;

__attribute__((used)) static int unixFileLock(unixFile *pFile, struct flock *pLock){
  int rc;
  unixInodeInfo *pInode = pFile->pInode;
  assert( unixMutexHeld() );
  assert( pInode!=0 );
  if( (pFile->ctrlFlags & (UNIXFILE_EXCL|UNIXFILE_RDONLY))==UNIXFILE_EXCL ){
    if( pInode->bProcessLock==0 ){
      struct flock lock;
      assert( pInode->nLock==0 );
      lock.l_whence = SEEK_SET;
      lock.l_start = SHARED_FIRST;
      lock.l_len = SHARED_SIZE;
      lock.l_type = F_WRLCK;
      rc = osSetPosixAdvisoryLock(pFile->h, &lock, pFile);
      if( rc<0 ) return rc;
      pInode->bProcessLock = 1;
      pInode->nLock++;
    }else{
      rc = 0;
    }
  }else{
    rc = osSetPosixAdvisoryLock(pFile->h, pLock, pFile);
  }
  return rc;
}
