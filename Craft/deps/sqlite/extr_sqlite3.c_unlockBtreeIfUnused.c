
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int aData; } ;
struct TYPE_5__ {scalar_t__ inTransaction; TYPE_3__* pPage1; int pPager; int mutex; } ;
typedef TYPE_1__ BtShared ;


 scalar_t__ TRANS_NONE ;
 int assert (int) ;
 scalar_t__ countValidCursors (TYPE_1__*,int ) ;
 int releasePage (TYPE_3__*) ;
 int sqlite3PagerRefcount (int ) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static void unlockBtreeIfUnused(BtShared *pBt){
  assert( sqlite3_mutex_held(pBt->mutex) );
  assert( countValidCursors(pBt,0)==0 || pBt->inTransaction>TRANS_NONE );
  if( pBt->inTransaction==TRANS_NONE && pBt->pPage1!=0 ){
    assert( pBt->pPage1->aData );
    assert( sqlite3PagerRefcount(pBt->pPager)==1 );
    assert( pBt->pPage1->aData );
    releasePage(pBt->pPage1);
    pBt->pPage1 = 0;
  }
}
