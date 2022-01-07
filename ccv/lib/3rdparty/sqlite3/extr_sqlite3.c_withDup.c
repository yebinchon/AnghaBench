
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_7__ {int nCte; TYPE_1__* a; } ;
typedef TYPE_2__ With ;
struct TYPE_6__ {int zName; int pCols; int pSelect; } ;


 TYPE_2__* sqlite3DbMallocZero (int *,int) ;
 int sqlite3DbStrDup (int *,int ) ;
 int sqlite3ExprListDup (int *,int ,int ) ;
 int sqlite3SelectDup (int *,int ,int ) ;

__attribute__((used)) static With *withDup(sqlite3 *db, With *p){
  With *pRet = 0;
  if( p ){
    int nByte = sizeof(*p) + sizeof(p->a[0]) * (p->nCte-1);
    pRet = sqlite3DbMallocZero(db, nByte);
    if( pRet ){
      int i;
      pRet->nCte = p->nCte;
      for(i=0; i<p->nCte; i++){
        pRet->a[i].pSelect = sqlite3SelectDup(db, p->a[i].pSelect, 0);
        pRet->a[i].pCols = sqlite3ExprListDup(db, p->a[i].pCols, 0);
        pRet->a[i].zName = sqlite3DbStrDup(db, p->a[i].zName);
      }
    }
  }
  return pRet;
}
