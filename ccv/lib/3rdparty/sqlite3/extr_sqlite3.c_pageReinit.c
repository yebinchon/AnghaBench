
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ isInit; TYPE_1__* pBt; } ;
struct TYPE_4__ {int mutex; } ;
typedef TYPE_2__ MemPage ;
typedef int DbPage ;


 int assert (int) ;
 int btreeInitPage (TYPE_2__*) ;
 scalar_t__ sqlite3PagerGetExtra (int *) ;
 int sqlite3PagerPageRefcount (int *) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static void pageReinit(DbPage *pData){
  MemPage *pPage;
  pPage = (MemPage *)sqlite3PagerGetExtra(pData);
  assert( sqlite3PagerPageRefcount(pData)>0 );
  if( pPage->isInit ){
    assert( sqlite3_mutex_held(pPage->pBt->mutex) );
    pPage->isInit = 0;
    if( sqlite3PagerPageRefcount(pData)>1 ){






      btreeInitPage(pPage);
    }
  }
}
