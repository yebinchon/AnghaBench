
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nPage; scalar_t__ pHasContent; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_1__ BtShared ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ sqlite3BitvecCreate (scalar_t__) ;
 int sqlite3BitvecSet (scalar_t__,scalar_t__) ;
 scalar_t__ sqlite3BitvecSize (scalar_t__) ;

__attribute__((used)) static int btreeSetHasContent(BtShared *pBt, Pgno pgno){
  int rc = SQLITE_OK;
  if( !pBt->pHasContent ){
    assert( pgno<=pBt->nPage );
    pBt->pHasContent = sqlite3BitvecCreate(pBt->nPage);
    if( !pBt->pHasContent ){
      rc = SQLITE_NOMEM;
    }
  }
  if( rc==SQLITE_OK && pgno<=sqlite3BitvecSize(pBt->pHasContent) ){
    rc = sqlite3BitvecSet(pBt->pHasContent, pgno);
  }
  return rc;
}
