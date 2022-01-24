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
struct TYPE_11__ {int flags; int errMask; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;

/* Variables and functions */
 int SQLITE_ABORT ; 
 int SQLITE_DONE ; 
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_NOMEM ; 
 int SQLITE_NOMEM_BKPT ; 
 scalar_t__ SQLITE_NULL ; 
 int SQLITE_NullCallback ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char**) ; 
 char** FUNC3 (TYPE_1__*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 scalar_t__ FUNC6 (char const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_1__*,char const*,int,int /*<<< orphan*/ **,char const**) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 

int FUNC19(
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

  if( !FUNC8(db) ) return SQLITE_MISUSE_BKPT;
  if( zSql==0 ) zSql = "";

  FUNC15(db->mutex);
  FUNC5(db, SQLITE_OK);
  while( rc==SQLITE_OK && zSql[0] ){
    int nCol;
    char **azVals = 0;

    pStmt = 0;
    rc = FUNC17(db, zSql, -1, &pStmt, &zLeftover);
    FUNC0( rc==SQLITE_OK || pStmt==0 );
    if( rc!=SQLITE_OK ){
      continue;
    }
    if( !pStmt ){
      /* this happens for a comment or white-space */
      zSql = zLeftover;
      continue;
    }

    callbackIsInit = 0;
    nCol = FUNC10(pStmt);

    while( 1 ){
      int i;
      rc = FUNC18(pStmt);

      /* Invoke the callback function if required */
      if( xCallback && (SQLITE_ROW==rc || 
          (SQLITE_DONE==rc && !callbackIsInit
                           && db->flags&SQLITE_NullCallback)) ){
        if( !callbackIsInit ){
          azCols = FUNC3(db, (2*nCol+1)*sizeof(const char*));
          if( azCols==0 ){
            goto exec_out;
          }
          for(i=0; i<nCol; i++){
            azCols[i] = (char *)FUNC11(pStmt, i);
            /* sqlite3VdbeSetColName() installs column names as UTF8
            ** strings so there is no way for sqlite3_column_name() to fail. */
            FUNC0( azCols[i]!=0 );
          }
          callbackIsInit = 1;
        }
        if( rc==SQLITE_ROW ){
          azVals = &azCols[nCol];
          for(i=0; i<nCol; i++){
            azVals[i] = (char *)FUNC12(pStmt, i);
            if( !azVals[i] && FUNC13(pStmt, i)!=SQLITE_NULL ){
              FUNC7(db);
              goto exec_out;
            }
          }
          azVals[i] = 0;
        }
        if( xCallback(pArg, nCol, azVals, azCols) ){
          /* EVIDENCE-OF: R-38229-40159 If the callback function to
          ** sqlite3_exec() returns non-zero, then sqlite3_exec() will
          ** return SQLITE_ABORT. */
          rc = SQLITE_ABORT;
          FUNC9((Vdbe *)pStmt);
          pStmt = 0;
          FUNC5(db, SQLITE_ABORT);
          goto exec_out;
        }
      }

      if( rc!=SQLITE_ROW ){
        rc = FUNC9((Vdbe *)pStmt);
        pStmt = 0;
        zSql = zLeftover;
        while( FUNC6(zSql[0]) ) zSql++;
        break;
      }
    }

    FUNC2(db, azCols);
    azCols = 0;
  }

exec_out:
  if( pStmt ) FUNC9((Vdbe *)pStmt);
  FUNC2(db, azCols);

  rc = FUNC1(db, rc);
  if( rc!=SQLITE_OK && pzErrMsg ){
    *pzErrMsg = FUNC4(0, FUNC14(db));
    if( *pzErrMsg==0 ){
      rc = SQLITE_NOMEM_BKPT;
      FUNC5(db, SQLITE_NOMEM);
    }
  }else if( pzErrMsg ){
    *pzErrMsg = 0;
  }

  FUNC0( (rc&db->errMask)==rc );
  FUNC16(db->mutex);
  return rc;
}