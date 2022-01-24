#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_13__ ;

/* Type definitions */
struct TYPE_22__ {scalar_t__ zErrMsg; TYPE_1__* pModule; } ;
typedef  TYPE_4__ sqlite3_vtab ;
struct TYPE_23__ {size_t nConstraint; TYPE_3__* aConstraintUsage; TYPE_2__* aConstraint; } ;
typedef  TYPE_5__ sqlite3_index_info ;
struct TYPE_24__ {scalar_t__ zName; } ;
typedef  TYPE_6__ Table ;
struct TYPE_25__ {int nErr; int /*<<< orphan*/  db; } ;
struct TYPE_21__ {scalar_t__ argvIndex; } ;
struct TYPE_20__ {int /*<<< orphan*/  usable; } ;
struct TYPE_19__ {int (* xBestIndex ) (TYPE_4__*,TYPE_5__*) ;} ;
struct TYPE_18__ {TYPE_4__* pVtab; } ;
typedef  TYPE_7__ Parse ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 size_t i ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,char*,scalar_t__) ; 
 TYPE_13__* FUNC4 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (TYPE_4__*,TYPE_5__*) ; 

__attribute__((used)) static int FUNC8(Parse *pParse, Table *pTab, sqlite3_index_info *p){
  sqlite3_vtab *pVtab = FUNC4(pParse->db, pTab)->pVtab;
  int rc;

  FUNC0(p);
  rc = pVtab->pModule->xBestIndex(pVtab, p);
  FUNC1(p);

  if( rc!=SQLITE_OK ){
    if( rc==SQLITE_NOMEM ){
      FUNC5(pParse->db);
    }else if( !pVtab->zErrMsg ){
      FUNC3(pParse, "%s", FUNC2(rc));
    }else{
      FUNC3(pParse, "%s", pVtab->zErrMsg);
    }
  }
  FUNC6(pVtab->zErrMsg);
  pVtab->zErrMsg = 0;

#if 0
  /* This error is now caught by the caller.
  ** Search for "xBestIndex malfunction" below */
  for(i=0; i<p->nConstraint; i++){
    if( !p->aConstraint[i].usable && p->aConstraintUsage[i].argvIndex>0 ){
      sqlite3ErrorMsg(pParse, 
          "table %s: xBestIndex returned an invalid plan", pTab->zName);
    }
  }
#endif

  return pParse->nErr;
}