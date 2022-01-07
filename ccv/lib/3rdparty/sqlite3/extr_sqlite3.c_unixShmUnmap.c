
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ nRef; scalar_t__ h; int zFilename; int mutex; TYPE_3__* pFirst; TYPE_1__* pInode; } ;
typedef TYPE_2__ unixShmNode ;
struct TYPE_9__ {struct TYPE_9__* pNext; TYPE_2__* pShmNode; } ;
typedef TYPE_3__ unixShm ;
struct TYPE_10__ {TYPE_3__* pShm; TYPE_1__* pInode; } ;
typedef TYPE_4__ unixFile ;
typedef int sqlite3_file ;
struct TYPE_7__ {TYPE_2__* pShmNode; } ;


 int SQLITE_OK ;
 int assert (int) ;
 int osUnlink (int ) ;
 int sqlite3_free (TYPE_3__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 int unixEnterMutex () ;
 int unixLeaveMutex () ;
 int unixShmPurge (TYPE_4__*) ;

__attribute__((used)) static int unixShmUnmap(
  sqlite3_file *fd,
  int deleteFlag
){
  unixShm *p;
  unixShmNode *pShmNode;
  unixShm **pp;
  unixFile *pDbFd;

  pDbFd = (unixFile*)fd;
  p = pDbFd->pShm;
  if( p==0 ) return SQLITE_OK;
  pShmNode = p->pShmNode;

  assert( pShmNode==pDbFd->pInode->pShmNode );
  assert( pShmNode->pInode==pDbFd->pInode );



  sqlite3_mutex_enter(pShmNode->mutex);
  for(pp=&pShmNode->pFirst; (*pp)!=p; pp = &(*pp)->pNext){}
  *pp = p->pNext;


  sqlite3_free(p);
  pDbFd->pShm = 0;
  sqlite3_mutex_leave(pShmNode->mutex);



  unixEnterMutex();
  assert( pShmNode->nRef>0 );
  pShmNode->nRef--;
  if( pShmNode->nRef==0 ){
    if( deleteFlag && pShmNode->h>=0 ){
      osUnlink(pShmNode->zFilename);
    }
    unixShmPurge(pDbFd);
  }
  unixLeaveMutex();

  return SQLITE_OK;
}
