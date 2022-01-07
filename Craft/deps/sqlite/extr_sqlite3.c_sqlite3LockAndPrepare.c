
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_7__ {int mutex; } ;
typedef TYPE_1__ sqlite3 ;
typedef int Vdbe ;


 int SQLITE_MISUSE_BKPT ;
 int SQLITE_OK ;
 int SQLITE_SCHEMA ;
 int assert (int) ;
 int sqlite3BtreeEnterAll (TYPE_1__*) ;
 int sqlite3BtreeLeaveAll (TYPE_1__*) ;
 int sqlite3Prepare (TYPE_1__*,char const*,int,int,int *,int **,char const**) ;
 int sqlite3SafetyCheckOk (TYPE_1__*) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

__attribute__((used)) static int sqlite3LockAndPrepare(
  sqlite3 *db,
  const char *zSql,
  int nBytes,
  int saveSqlFlag,
  Vdbe *pOld,
  sqlite3_stmt **ppStmt,
  const char **pzTail
){
  int rc;
  assert( ppStmt!=0 );
  *ppStmt = 0;
  if( !sqlite3SafetyCheckOk(db) ){
    return SQLITE_MISUSE_BKPT;
  }
  sqlite3_mutex_enter(db->mutex);
  sqlite3BtreeEnterAll(db);
  rc = sqlite3Prepare(db, zSql, nBytes, saveSqlFlag, pOld, ppStmt, pzTail);
  if( rc==SQLITE_SCHEMA ){
    sqlite3_finalize(*ppStmt);
    rc = sqlite3Prepare(db, zSql, nBytes, saveSqlFlag, pOld, ppStmt, pzTail);
  }
  sqlite3BtreeLeaveAll(db);
  sqlite3_mutex_leave(db->mutex);
  assert( rc==SQLITE_OK || *ppStmt==0 );
  return rc;
}
