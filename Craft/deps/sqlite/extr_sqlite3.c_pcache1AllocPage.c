
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_13__ {int nCurrentPage; int mutex; } ;
struct TYPE_12__ {int szPage; int szExtra; TYPE_6__* pGroup; scalar_t__ bPurgeable; } ;
struct TYPE_10__ {TYPE_2__* pExtra; void* pBuf; } ;
struct TYPE_11__ {TYPE_1__ page; } ;
typedef TYPE_2__ PgHdr1 ;
typedef TYPE_3__ PCache1 ;


 int assert (int ) ;
 void* pcache1Alloc (int) ;
 int pcache1EnterMutex (TYPE_6__*) ;
 int pcache1Free (void*) ;
 int pcache1LeaveMutex (TYPE_6__*) ;
 TYPE_2__* sqlite3Malloc (int) ;
 int sqlite3_free (TYPE_2__*) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static PgHdr1 *pcache1AllocPage(PCache1 *pCache){
  PgHdr1 *p = 0;
  void *pPg;




  assert( sqlite3_mutex_held(pCache->pGroup->mutex) );
  pcache1LeaveMutex(pCache->pGroup);
  pPg = pcache1Alloc(sizeof(PgHdr1) + pCache->szPage + pCache->szExtra);
  p = (PgHdr1 *)&((u8 *)pPg)[pCache->szPage];

  pcache1EnterMutex(pCache->pGroup);

  if( pPg ){
    p->page.pBuf = pPg;
    p->page.pExtra = &p[1];
    if( pCache->bPurgeable ){
      pCache->pGroup->nCurrentPage++;
    }
    return p;
  }
  return 0;
}
