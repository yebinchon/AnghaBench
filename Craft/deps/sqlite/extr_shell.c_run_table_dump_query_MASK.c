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
struct callback_data {int /*<<< orphan*/  nErr; int /*<<< orphan*/  db; int /*<<< orphan*/  out; } ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;

/* Variables and functions */
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(
  struct callback_data *p, /* Query context */
  const char *zSelect,     /* SELECT statement to extract content */
  const char *zFirstRow    /* Print before first row, if not NULL */
){
  sqlite3_stmt *pSelect;
  int rc;
  int nResult;
  int i;
  const char *z;
  rc = FUNC5(p->db, zSelect, -1, &pSelect, 0);
  if( rc!=SQLITE_OK || !pSelect ){
    FUNC0(p->out, "/**** ERROR: (%d) %s *****/\n", rc, FUNC3(p->db));
    p->nErr++;
    return rc;
  }
  rc = FUNC6(pSelect);
  nResult = FUNC1(pSelect);
  while( rc==SQLITE_ROW ){
    if( zFirstRow ){
      FUNC0(p->out, "%s", zFirstRow);
      zFirstRow = 0;
    }
    z = (const char*)FUNC2(pSelect, 0);
    FUNC0(p->out, "%s", z);
    for(i=1; i<nResult; i++){ 
      FUNC0(p->out, ",%s", FUNC2(pSelect, i));
    }
    if( z==0 ) z = "";
    while( z[0] && (z[0]!='-' || z[1]!='-') ) z++;
    if( z[0] ){
      FUNC0(p->out, "\n;\n");
    }else{
      FUNC0(p->out, ";\n");
    }    
    rc = FUNC6(pSelect);
  }
  rc = FUNC4(pSelect);
  if( rc!=SQLITE_OK ){
    FUNC0(p->out, "/**** ERROR: (%d) %s *****/\n", rc, FUNC3(p->db));
    p->nErr++;
  }
  return rc;
}