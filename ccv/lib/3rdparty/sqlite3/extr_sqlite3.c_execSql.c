
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 scalar_t__ CORRUPT_DB ;
 int SQLITE_DONE ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int assert (int) ;
 int sqlite3SetString (char**,int *,int ) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int *,char const*,int,int **,int ) ;
 int sqlite3_step (int *) ;
 scalar_t__ sqlite3_strnicmp (char const*,char*,int) ;

__attribute__((used)) static int execSql(sqlite3 *db, char **pzErrMsg, const char *zSql){
  sqlite3_stmt *pStmt;
  int rc;


  rc = sqlite3_prepare_v2(db, zSql, -1, &pStmt, 0);
  if( rc!=SQLITE_OK ) return rc;
  while( SQLITE_ROW==(rc = sqlite3_step(pStmt)) ){
    const char *zSubSql = (const char*)sqlite3_column_text(pStmt,0);
    assert( sqlite3_strnicmp(zSql,"SELECT",6)==0 );
    assert( sqlite3_strnicmp(zSubSql,"SELECT",6)!=0 || CORRUPT_DB );
    if( zSubSql && zSubSql[0]!='S' ){
      rc = execSql(db, pzErrMsg, zSubSql);
      if( rc!=SQLITE_OK ) break;
    }
  }
  assert( rc!=SQLITE_ROW );
  if( rc==SQLITE_DONE ) rc = SQLITE_OK;
  if( rc ){
    sqlite3SetString(pzErrMsg, db, sqlite3_errmsg(db));
  }
  (void)sqlite3_finalize(pStmt);
  return rc;
}
