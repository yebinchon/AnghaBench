#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* sqlstr; } ;
struct TYPE_5__ {TYPE_2__* pSql; int /*<<< orphan*/  taos; scalar_t__ isInsert; } ;
typedef  int /*<<< orphan*/  TAOS_STMT ;
typedef  TYPE_1__ STscStmt ;

/* Variables and functions */
 int TSDB_CODE_CLI_OUT_OF_MEMORY ; 
 int FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(TAOS_STMT* stmt) {
  int ret = 0;
  STscStmt* pStmt = (STscStmt*)stmt;
  if (pStmt->isInsert) {
    ret = FUNC0(pStmt);
  } else {
    char* sql = FUNC1(pStmt);
    if (sql == NULL) {
      ret = TSDB_CODE_CLI_OUT_OF_MEMORY;
    } else {
      FUNC3(pStmt->pSql->sqlstr);
      pStmt->pSql->sqlstr = sql;
      ret = FUNC2(pStmt->taos, pStmt->pSql);
    }
  }
  return ret;
}