
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* aDb; int autoCommit; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_9__ {TYPE_2__* db; } ;
struct TYPE_7__ {scalar_t__ pBt; } ;
typedef TYPE_3__ Parse ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int sqlite3BtreeClose (scalar_t__) ;
 scalar_t__ sqlite3BtreeIsInReadTrans (scalar_t__) ;
 int sqlite3ErrorMsg (TYPE_3__*,char*) ;
 int sqlite3ResetAllSchemasOfConnection (TYPE_2__*) ;

__attribute__((used)) static int invalidateTempStorage(Parse *pParse){
  sqlite3 *db = pParse->db;
  if( db->aDb[1].pBt!=0 ){
    if( !db->autoCommit || sqlite3BtreeIsInReadTrans(db->aDb[1].pBt) ){
      sqlite3ErrorMsg(pParse, "temporary storage cannot be changed "
        "from within a transaction");
      return SQLITE_ERROR;
    }
    sqlite3BtreeClose(db->aDb[1].pBt);
    db->aDb[1].pBt = 0;
    sqlite3ResetAllSchemasOfConnection(db);
  }
  return SQLITE_OK;
}
