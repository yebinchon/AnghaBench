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
struct TYPE_6__ {int isInsert; TYPE_1__* pSql; } ;
struct TYPE_5__ {char* sqlstr; } ;
typedef  int /*<<< orphan*/  TAOS_STMT ;
typedef  TYPE_2__ STscStmt ;

/* Variables and functions */
 int TSDB_CODE_CLI_OUT_OF_MEMORY ; 
 int FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned long) ; 
 int FUNC3 (TYPE_2__*) ; 
 unsigned long FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 

int FUNC8(TAOS_STMT* stmt, const char* sql, unsigned long length) {
  STscStmt* pStmt = (STscStmt*)stmt;
  if (length == 0) {
    length = FUNC4(sql);
  }
  char* sqlstr = (char*)FUNC1(length + 1);
  if (sqlstr == NULL) {
    FUNC6("failed to malloc sql string buffer");
    return TSDB_CODE_CLI_OUT_OF_MEMORY;
  }
  FUNC2(sqlstr, sql, length);
  sqlstr[length] = 0;
  FUNC5(sqlstr, sqlstr);

  pStmt->pSql->sqlstr = sqlstr;
  if (FUNC7(sqlstr)) {
    pStmt->isInsert = true;
    return FUNC0(pStmt);
  }

  pStmt->isInsert = false;
  return FUNC3(pStmt);
}