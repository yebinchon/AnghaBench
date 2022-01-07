
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_5__ {int nCol; TYPE_2__* aCol; } ;
typedef TYPE_1__ Table ;
struct TYPE_6__ {struct TYPE_6__* zColl; struct TYPE_6__* zType; struct TYPE_6__* zDflt; int pDflt; struct TYPE_6__* zName; } ;
typedef TYPE_2__ Column ;


 int assert (int) ;
 int sqlite3DbFree (int *,TYPE_2__*) ;
 int sqlite3ExprDelete (int *,int ) ;

__attribute__((used)) static void sqliteDeleteColumnNames(sqlite3 *db, Table *pTable){
  int i;
  Column *pCol;
  assert( pTable!=0 );
  if( (pCol = pTable->aCol)!=0 ){
    for(i=0; i<pTable->nCol; i++, pCol++){
      sqlite3DbFree(db, pCol->zName);
      sqlite3ExprDelete(db, pCol->pDflt);
      sqlite3DbFree(db, pCol->zDflt);
      sqlite3DbFree(db, pCol->zType);
      sqlite3DbFree(db, pCol->zColl);
    }
    sqlite3DbFree(db, pTable->aCol);
  }
}
