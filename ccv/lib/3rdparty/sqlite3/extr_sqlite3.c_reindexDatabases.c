
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int nDb; TYPE_4__* aDb; } ;
typedef TYPE_2__ sqlite3 ;
typedef int Table ;
struct TYPE_11__ {TYPE_1__* pSchema; } ;
struct TYPE_10__ {TYPE_2__* db; } ;
struct TYPE_8__ {int tblHash; } ;
typedef TYPE_3__ Parse ;
typedef int HashElem ;
typedef TYPE_4__ Db ;


 int assert (int) ;
 int reindexTable (TYPE_3__*,int *,char const*) ;
 int sqlite3BtreeHoldsAllMutexes (TYPE_2__*) ;
 scalar_t__ sqliteHashData (int *) ;
 int * sqliteHashFirst (int *) ;
 int * sqliteHashNext (int *) ;

__attribute__((used)) static void reindexDatabases(Parse *pParse, char const *zColl){
  Db *pDb;
  int iDb;
  sqlite3 *db = pParse->db;
  HashElem *k;
  Table *pTab;

  assert( sqlite3BtreeHoldsAllMutexes(db) );
  for(iDb=0, pDb=db->aDb; iDb<db->nDb; iDb++, pDb++){
    assert( pDb!=0 );
    for(k=sqliteHashFirst(&pDb->pSchema->tblHash); k; k=sqliteHashNext(k)){
      pTab = (Table*)sqliteHashData(k);
      reindexTable(pParse, pTab, zColl);
    }
  }
}
