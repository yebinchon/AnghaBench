#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_1__* aDb; } ;
typedef  TYPE_2__ sqlite3 ;
struct TYPE_16__ {int rc; char const* zErrMsg; TYPE_2__* db; } ;
struct TYPE_14__ {int /*<<< orphan*/ * pBt; } ;
typedef  TYPE_3__ Parse ;
typedef  int /*<<< orphan*/  Btree ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,char*,...) ; 
 int FUNC2 (TYPE_2__*,char const*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static Btree *FUNC6(sqlite3 *pErrorDb, sqlite3 *pDb, const char *zDb){
  int i = FUNC2(pDb, zDb);

  if( i==1 ){
    Parse *pParse;
    int rc = 0;
    pParse = FUNC4(pErrorDb, sizeof(*pParse));
    if( pParse==0 ){
      FUNC1(pErrorDb, SQLITE_NOMEM, "out of memory");
      rc = SQLITE_NOMEM;
    }else{
      pParse->db = pDb;
      if( FUNC3(pParse) ){
        FUNC1(pErrorDb, pParse->rc, "%s", pParse->zErrMsg);
        rc = SQLITE_ERROR;
      }
      FUNC0(pErrorDb, pParse->zErrMsg);
      FUNC5(pErrorDb, pParse);
    }
    if( rc ){
      return 0;
    }
  }

  if( i<0 ){
    FUNC1(pErrorDb, SQLITE_ERROR, "unknown database %s", zDb);
    return 0;
  }

  return pDb->aDb[i].pBt;
}