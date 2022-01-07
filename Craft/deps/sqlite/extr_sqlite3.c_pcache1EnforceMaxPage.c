
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ nCurrentPage; scalar_t__ nMaxPage; TYPE_2__* pLruTail; int mutex; } ;
struct TYPE_9__ {TYPE_1__* pCache; } ;
struct TYPE_8__ {TYPE_3__* pGroup; } ;
typedef TYPE_2__ PgHdr1 ;
typedef TYPE_3__ PGroup ;


 int assert (int) ;
 int pcache1FreePage (TYPE_2__*) ;
 int pcache1PinPage (TYPE_2__*) ;
 int pcache1RemoveFromHash (TYPE_2__*) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static void pcache1EnforceMaxPage(PGroup *pGroup){
  assert( sqlite3_mutex_held(pGroup->mutex) );
  while( pGroup->nCurrentPage>pGroup->nMaxPage && pGroup->pLruTail ){
    PgHdr1 *p = pGroup->pLruTail;
    assert( p->pCache->pGroup==pGroup );
    pcache1PinPage(p);
    pcache1RemoveFromHash(p);
    pcache1FreePage(p);
  }
}
