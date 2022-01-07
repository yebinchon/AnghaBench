
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* pGroup; scalar_t__ bPurgeable; } ;
struct TYPE_8__ {int pBuf; } ;
struct TYPE_10__ {TYPE_1__ page; TYPE_4__* pCache; } ;
struct TYPE_9__ {int nCurrentPage; int mutex; } ;
typedef TYPE_3__ PgHdr1 ;
typedef TYPE_4__ PCache1 ;


 scalar_t__ ALWAYS (TYPE_3__*) ;
 int assert (int ) ;
 int pcache1Free (int ) ;
 int sqlite3_free (TYPE_3__*) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static void pcache1FreePage(PgHdr1 *p){
  if( ALWAYS(p) ){
    PCache1 *pCache = p->pCache;
    assert( sqlite3_mutex_held(p->pCache->pGroup->mutex) );
    pcache1Free(p->page.pBuf);



    if( pCache->bPurgeable ){
      pCache->pGroup->nCurrentPage--;
    }
  }
}
