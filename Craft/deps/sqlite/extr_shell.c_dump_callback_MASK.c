#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct callback_data {int writableSchema; int /*<<< orphan*/  db; int /*<<< orphan*/  out; } ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;

/* Variables and functions */
 int SQLITE_CORRUPT ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char* FUNC1 (char*,char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct callback_data*,char*,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,char const*,char const*,char const*) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 scalar_t__ FUNC12 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC13(void *pArg, int nArg, char **azArg, char **azCol){
  int rc;
  const char *zTable;
  const char *zType;
  const char *zSql;
  const char *zPrepStmt = 0;
  struct callback_data *p = (struct callback_data *)pArg;

  FUNC0(azCol);
  if( nArg!=3 ) return 1;
  zTable = azArg[0];
  zType = azArg[1];
  zSql = azArg[2];
  
  if( FUNC11(zTable, "sqlite_sequence")==0 ){
    zPrepStmt = "DELETE FROM sqlite_sequence;\n";
  }else if( FUNC11(zTable, "sqlite_stat1")==0 ){
    FUNC2(p->out, "ANALYZE sqlite_master;\n");
  }else if( FUNC12(zTable, "sqlite_", 7)==0 ){
    return 0;
  }else if( FUNC12(zSql, "CREATE VIRTUAL TABLE", 20)==0 ){
    char *zIns;
    if( !p->writableSchema ){
      FUNC2(p->out, "PRAGMA writable_schema=ON;\n");
      p->writableSchema = 1;
    }
    zIns = FUNC8(
       "INSERT INTO sqlite_master(type,name,tbl_name,rootpage,sql)"
       "VALUES('table','%q','%q',0,'%q');",
       zTable, zTable, zSql);
    FUNC2(p->out, "%s\n", zIns);
    FUNC7(zIns);
    return 0;
  }else{
    FUNC2(p->out, "%s;\n", zSql);
  }

  if( FUNC11(zType, "table")==0 ){
    sqlite3_stmt *pTableInfo = 0;
    char *zSelect = 0;
    char *zTableInfo = 0;
    char *zTmp = 0;
    int nRow = 0;
   
    zTableInfo = FUNC1(zTableInfo, "PRAGMA table_info(", 0);
    zTableInfo = FUNC1(zTableInfo, zTable, '"');
    zTableInfo = FUNC1(zTableInfo, ");", 0);

    rc = FUNC9(p->db, zTableInfo, -1, &pTableInfo, 0);
    FUNC3(zTableInfo);
    if( rc!=SQLITE_OK || !pTableInfo ){
      return 1;
    }

    zSelect = FUNC1(zSelect, "SELECT 'INSERT INTO ' || ", 0);
    /* Always quote the table name, even if it appears to be pure ascii,
    ** in case it is a keyword. Ex:  INSERT INTO "table" ... */
    zTmp = FUNC1(zTmp, zTable, '"');
    if( zTmp ){
      zSelect = FUNC1(zSelect, zTmp, '\'');
      FUNC3(zTmp);
    }
    zSelect = FUNC1(zSelect, " || ' VALUES(' || ", 0);
    rc = FUNC10(pTableInfo);
    while( rc==SQLITE_ROW ){
      const char *zText = (const char *)FUNC5(pTableInfo, 1);
      zSelect = FUNC1(zSelect, "quote(", 0);
      zSelect = FUNC1(zSelect, zText, '"');
      rc = FUNC10(pTableInfo);
      if( rc==SQLITE_ROW ){
        zSelect = FUNC1(zSelect, "), ", 0);
      }else{
        zSelect = FUNC1(zSelect, ") ", 0);
      }
      nRow++;
    }
    rc = FUNC6(pTableInfo);
    if( rc!=SQLITE_OK || nRow==0 ){
      FUNC3(zSelect);
      return 1;
    }
    zSelect = FUNC1(zSelect, "|| ')' FROM  ", 0);
    zSelect = FUNC1(zSelect, zTable, '"');

    rc = FUNC4(p, zSelect, zPrepStmt);
    if( rc==SQLITE_CORRUPT ){
      zSelect = FUNC1(zSelect, " ORDER BY rowid DESC", 0);
      FUNC4(p, zSelect, 0);
    }
    FUNC3(zSelect);
  }
  return 0;
}