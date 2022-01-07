
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int nDb; int aModule; TYPE_1__* aDb; } ;
typedef TYPE_2__ sqlite3 ;
typedef int Table ;
struct TYPE_14__ {int * pEpoTab; } ;
struct TYPE_13__ {int tblHash; } ;
struct TYPE_11__ {TYPE_3__* pSchema; } ;
typedef TYPE_3__ Schema ;
typedef TYPE_4__ Module ;
typedef int HashElem ;


 scalar_t__ IsVirtual (int *) ;
 int UNUSED_PARAMETER (TYPE_2__*) ;
 int sqlite3BtreeEnterAll (TYPE_2__*) ;
 int sqlite3BtreeLeaveAll (TYPE_2__*) ;
 int sqlite3VtabDisconnect (TYPE_2__*,int *) ;
 int sqlite3VtabUnlockList (TYPE_2__*) ;
 scalar_t__ sqliteHashData (int *) ;
 int * sqliteHashFirst (int *) ;
 int * sqliteHashNext (int *) ;

__attribute__((used)) static void disconnectAllVtab(sqlite3 *db){

  int i;
  HashElem *p;
  sqlite3BtreeEnterAll(db);
  for(i=0; i<db->nDb; i++){
    Schema *pSchema = db->aDb[i].pSchema;
    if( db->aDb[i].pSchema ){
      for(p=sqliteHashFirst(&pSchema->tblHash); p; p=sqliteHashNext(p)){
        Table *pTab = (Table *)sqliteHashData(p);
        if( IsVirtual(pTab) ) sqlite3VtabDisconnect(db, pTab);
      }
    }
  }
  for(p=sqliteHashFirst(&db->aModule); p; p=sqliteHashNext(p)){
    Module *pMod = (Module *)sqliteHashData(p);
    if( pMod->pEpoTab ){
      sqlite3VtabDisconnect(db, pMod->pEpoTab);
    }
  }
  sqlite3VtabUnlockList(db);
  sqlite3BtreeLeaveAll(db);



}
