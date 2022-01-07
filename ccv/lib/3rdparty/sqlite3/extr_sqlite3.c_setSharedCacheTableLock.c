
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_11__ {scalar_t__ iTable; scalar_t__ eLock; struct TYPE_11__* pNext; TYPE_2__* pBtree; } ;
struct TYPE_10__ {TYPE_4__* pLock; } ;
struct TYPE_9__ {int sharable; TYPE_1__* db; TYPE_3__* pBt; } ;
struct TYPE_8__ {int flags; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_2__ Btree ;
typedef TYPE_3__ BtShared ;
typedef TYPE_4__ BtLock ;


 scalar_t__ READ_LOCK ;
 int SQLITE_NOMEM_BKPT ;
 scalar_t__ SQLITE_OK ;
 int SQLITE_ReadUncommit ;
 scalar_t__ WRITE_LOCK ;
 int assert (int) ;
 scalar_t__ querySharedCacheTableLock (TYPE_2__*,scalar_t__,scalar_t__) ;
 int sqlite3BtreeHoldsMutex (TYPE_2__*) ;
 scalar_t__ sqlite3MallocZero (int) ;

__attribute__((used)) static int setSharedCacheTableLock(Btree *p, Pgno iTable, u8 eLock){
  BtShared *pBt = p->pBt;
  BtLock *pLock = 0;
  BtLock *pIter;

  assert( sqlite3BtreeHoldsMutex(p) );
  assert( eLock==READ_LOCK || eLock==WRITE_LOCK );
  assert( p->db!=0 );





  assert( 0==(p->db->flags&SQLITE_ReadUncommit) || eLock==WRITE_LOCK );



  assert( p->sharable );
  assert( SQLITE_OK==querySharedCacheTableLock(p, iTable, eLock) );


  for(pIter=pBt->pLock; pIter; pIter=pIter->pNext){
    if( pIter->iTable==iTable && pIter->pBtree==p ){
      pLock = pIter;
      break;
    }
  }




  if( !pLock ){
    pLock = (BtLock *)sqlite3MallocZero(sizeof(BtLock));
    if( !pLock ){
      return SQLITE_NOMEM_BKPT;
    }
    pLock->iTable = iTable;
    pLock->pBtree = p;
    pLock->pNext = pBt->pLock;
    pBt->pLock = pLock;
  }





  assert( WRITE_LOCK>READ_LOCK );
  if( eLock>pLock->eLock ){
    pLock->eLock = eLock;
  }

  return SQLITE_OK;
}
