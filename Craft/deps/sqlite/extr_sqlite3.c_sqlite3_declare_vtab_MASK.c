#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  mutex; TYPE_1__* pVtabCtx; int /*<<< orphan*/  mallocFailed; } ;
typedef  TYPE_2__ sqlite3 ;
struct TYPE_19__ {int tabFlags; scalar_t__ nCol; scalar_t__ aCol; } ;
typedef  TYPE_3__ Table ;
struct TYPE_20__ {int declareVtab; int nQueryLoop; TYPE_13__* pNewTable; scalar_t__ pVdbe; TYPE_2__* db; } ;
struct TYPE_17__ {TYPE_3__* pTab; } ;
struct TYPE_16__ {int tabFlags; scalar_t__ aCol; scalar_t__ nCol; int /*<<< orphan*/  pSelect; } ;
typedef  TYPE_4__ Parse ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int /*<<< orphan*/  SQLITE_MISUSE ; 
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int TF_Virtual ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,char*,...) ; 
 int FUNC5 (TYPE_4__*,char const*,char**) ; 
 TYPE_4__* FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(sqlite3 *db, const char *zCreateTable){
  Parse *pParse;

  int rc = SQLITE_OK;
  Table *pTab;
  char *zErr = 0;

  FUNC9(db->mutex);
  if( !db->pVtabCtx || !(pTab = db->pVtabCtx->pTab) ){
    FUNC4(db, SQLITE_MISUSE, 0);
    FUNC10(db->mutex);
    return SQLITE_MISUSE_BKPT;
  }
  FUNC0( (pTab->tabFlags & TF_Virtual)!=0 );

  pParse = FUNC6(db, sizeof(*pParse));
  if( pParse==0 ){
    rc = SQLITE_NOMEM;
  }else{
    pParse->declareVtab = 1;
    pParse->db = db;
    pParse->nQueryLoop = 1;
  
    if( SQLITE_OK==FUNC5(pParse, zCreateTable, &zErr) 
     && pParse->pNewTable
     && !db->mallocFailed
     && !pParse->pNewTable->pSelect
     && (pParse->pNewTable->tabFlags & TF_Virtual)==0
    ){
      if( !pTab->aCol ){
        pTab->aCol = pParse->pNewTable->aCol;
        pTab->nCol = pParse->pNewTable->nCol;
        pParse->pNewTable->nCol = 0;
        pParse->pNewTable->aCol = 0;
      }
      db->pVtabCtx->pTab = 0;
    }else{
      FUNC4(db, SQLITE_ERROR, (zErr ? "%s" : 0), zErr);
      FUNC2(db, zErr);
      rc = SQLITE_ERROR;
    }
    pParse->declareVtab = 0;
  
    if( pParse->pVdbe ){
      FUNC8(pParse->pVdbe);
    }
    FUNC3(db, pParse->pNewTable);
    FUNC7(db, pParse);
  }

  FUNC0( (rc&0xff)==rc );
  rc = FUNC1(db, rc);
  FUNC10(db->mutex);
  return rc;
}