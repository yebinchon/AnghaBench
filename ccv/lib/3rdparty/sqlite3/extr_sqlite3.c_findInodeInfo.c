
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct unixFileId {int nRef; struct unixFileId* pPrev; struct unixFileId* pNext; int fileId; scalar_t__ ino; int pId; int dev; } ;
typedef struct unixFileId unixInodeInfo ;
struct TYPE_4__ {int h; scalar_t__ lastErrno; int fsFlags; int pId; } ;
typedef TYPE_1__ unixFile ;
typedef scalar_t__ u64 ;
struct stat {scalar_t__ st_size; scalar_t__ st_ino; int st_dev; } ;
typedef int fileId ;


 scalar_t__ EINTR ;
 scalar_t__ EOVERFLOW ;
 int SQLITE_FSFLAGS_IS_MSDOS ;
 int SQLITE_IOERR ;
 int SQLITE_NOLFS ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ errno ;
 struct unixFileId* inodeList ;
 scalar_t__ memcmp (struct unixFileId*,int *,int) ;
 int memcpy (int *,struct unixFileId*,int) ;
 int memset (struct unixFileId*,int ,int) ;
 scalar_t__ nUnusedFd ;
 int osFstat (int,struct stat*) ;
 int osWrite (int,char*,int) ;
 struct unixFileId* sqlite3_malloc64 (int) ;
 int storeLastErrno (TYPE_1__*,scalar_t__) ;
 int unixMutexHeld () ;

__attribute__((used)) static int findInodeInfo(
  unixFile *pFile,
  unixInodeInfo **ppInode
){
  int rc;
  int fd;
  struct unixFileId fileId;
  struct stat statbuf;
  unixInodeInfo *pInode = 0;

  assert( unixMutexHeld() );




  fd = pFile->h;
  rc = osFstat(fd, &statbuf);
  if( rc!=0 ){
    storeLastErrno(pFile, errno);



    return SQLITE_IOERR;
  }
  memset(&fileId, 0, sizeof(fileId));
  fileId.dev = statbuf.st_dev;



  fileId.ino = (u64)statbuf.st_ino;

  assert( inodeList!=0 || nUnusedFd==0 );
  pInode = inodeList;
  while( pInode && memcmp(&fileId, &pInode->fileId, sizeof(fileId)) ){
    pInode = pInode->pNext;
  }
  if( pInode==0 ){
    pInode = sqlite3_malloc64( sizeof(*pInode) );
    if( pInode==0 ){
      return SQLITE_NOMEM_BKPT;
    }
    memset(pInode, 0, sizeof(*pInode));
    memcpy(&pInode->fileId, &fileId, sizeof(fileId));
    pInode->nRef = 1;
    pInode->pNext = inodeList;
    pInode->pPrev = 0;
    if( inodeList ) inodeList->pPrev = pInode;
    inodeList = pInode;
  }else{
    pInode->nRef++;
  }
  *ppInode = pInode;
  return SQLITE_OK;
}
