
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* aDb; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_15__ {scalar_t__ nCol; scalar_t__ aCol; scalar_t__ pSelect; } ;
typedef TYPE_4__ Table ;
struct TYPE_13__ {TYPE_1__* pSchema; } ;
struct TYPE_12__ {int tblHash; } ;
typedef int HashElem ;


 int DB_UnresetViews ;
 int DbClearProperty (TYPE_3__*,int,int ) ;
 int DbHasProperty (TYPE_3__*,int,int ) ;
 int assert (int ) ;
 int sqlite3DeleteColumnNames (TYPE_3__*,TYPE_4__*) ;
 int sqlite3SchemaMutexHeld (TYPE_3__*,int,int ) ;
 TYPE_4__* sqliteHashData (int *) ;
 int * sqliteHashFirst (int *) ;
 int * sqliteHashNext (int *) ;

__attribute__((used)) static void sqliteViewResetAll(sqlite3 *db, int idx){
  HashElem *i;
  assert( sqlite3SchemaMutexHeld(db, idx, 0) );
  if( !DbHasProperty(db, idx, DB_UnresetViews) ) return;
  for(i=sqliteHashFirst(&db->aDb[idx].pSchema->tblHash); i;i=sqliteHashNext(i)){
    Table *pTab = sqliteHashData(i);
    if( pTab->pSelect ){
      sqlite3DeleteColumnNames(db, pTab);
      pTab->aCol = 0;
      pTab->nCol = 0;
    }
  }
  DbClearProperty(db, idx, DB_UnresetViews);
}
