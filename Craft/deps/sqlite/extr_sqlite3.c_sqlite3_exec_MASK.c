#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  scalar_t__ (* sqlite3_callback ) (void*,int,char**,char**) ;
struct TYPE_11__ {int flags; int mallocFailed; int errMask; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int SQLITE_ABORT ; 
 int SQLITE_DONE ; 
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_NOMEM ; 
 scalar_t__ SQLITE_NULL ; 
 int SQLITE_NullCallback ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char**) ; 
 char** FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const) ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int) ; 
 int FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (TYPE_1__*,char const*,int,int /*<<< orphan*/ **,char const**) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 

int FUNC22(
  sqlite3 *db,                /* The database on which the SQL executes */
  const char *zSql,           /* The SQL to be executed */
  sqlite3_callback xCallback, /* Invoke this callback routine */
  void *pArg,                 /* First argument to xCallback() */
  char **pzErrMsg             /* Write error messages here */
){
  int rc = SQLITE_OK;         /* Return code */
  const char *zLeftover;      /* Tail of unprocessed SQL */
  sqlite3_stmt *pStmt = 0;    /* The current SQL statement */
  char **azCols = 0;          /* Names of result columns */
  int callbackIsInit;         /* True if callback data is initialized */

  if( !FUNC9(db) ) return SQLITE_MISUSE_BKPT;
  if( zSql==0 ) zSql = "";

  FUNC18(db->mutex);
  FUNC6(db, SQLITE_OK, 0);
  while( rc==SQLITE_OK && zSql[0] ){
    int nCol;
    char **azVals = 0;

    pStmt = 0;
    rc = FUNC20(db, zSql, -1, &pStmt, &zLeftover);
    FUNC1( rc==SQLITE_OK || pStmt==0 );
    if( rc!=SQLITE_OK ){
      continue;
    }
    if( !pStmt ){
      /* this happens for a comment or white-space */
      zSql = zLeftover;
      continue;
    }

    callbackIsInit = 0;
    nCol = FUNC12(pStmt);

    while( 1 ){
      int i;
      rc = FUNC21(pStmt);

      /* Invoke the callback function if required */
      if( xCallback && (SQLITE_ROW==rc || 
          (SQLITE_DONE==rc && !callbackIsInit
                           && db->flags&SQLITE_NullCallback)) ){
        if( !callbackIsInit ){
          azCols = FUNC5(db, 2*nCol*sizeof(const char*) + 1);
          if( azCols==0 ){
            goto exec_out;
          }
          for(i=0; i<nCol; i++){
            azCols[i] = (char *)FUNC13(pStmt, i);
            /* sqlite3VdbeSetColName() installs column names as UTF8
            ** strings so there is no way for sqlite3_column_name() to fail. */
            FUNC1( azCols[i]!=0 );
          }
          callbackIsInit = 1;
        }
        if( rc==SQLITE_ROW ){
          azVals = &azCols[nCol];
          for(i=0; i<nCol; i++){
            azVals[i] = (char *)FUNC14(pStmt, i);
            if( !azVals[i] && FUNC15(pStmt, i)!=SQLITE_NULL ){
              db->mallocFailed = 1;
              goto exec_out;
            }
          }
        }
        if( xCallback(pArg, nCol, azVals, azCols) ){
          rc = SQLITE_ABORT;
          FUNC11((Vdbe *)pStmt);
          pStmt = 0;
          FUNC6(db, SQLITE_ABORT, 0);
          goto exec_out;
        }
      }

      if( rc!=SQLITE_ROW ){
        rc = FUNC11((Vdbe *)pStmt);
        pStmt = 0;
        zSql = zLeftover;
        while( FUNC7(zSql[0]) ) zSql++;
        break;
      }
    }

    FUNC4(db, azCols);
    azCols = 0;
  }

exec_out:
  if( pStmt ) FUNC11((Vdbe *)pStmt);
  FUNC4(db, azCols);

  rc = FUNC3(db, rc);
  if( rc!=SQLITE_OK && FUNC0(rc==FUNC16(db)) && pzErrMsg ){
    int nErrMsg = 1 + FUNC10(FUNC17(db));
    *pzErrMsg = FUNC8(nErrMsg);
    if( *pzErrMsg ){
      FUNC2(*pzErrMsg, FUNC17(db), nErrMsg);
    }else{
      rc = SQLITE_NOMEM;
      FUNC6(db, SQLITE_NOMEM, 0);
    }
  }else if( pzErrMsg ){
    *pzErrMsg = 0;
  }

  FUNC1( (rc&db->errMask)==rc );
  FUNC19(db->mutex);
  return rc;
}