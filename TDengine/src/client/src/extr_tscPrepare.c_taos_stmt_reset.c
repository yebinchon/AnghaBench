
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ isInsert; } ;
typedef int TAOS_STMT ;
typedef TYPE_1__ STscStmt ;


 int TSDB_CODE_SUCCESS ;
 int insertStmtReset (TYPE_1__*) ;

int taos_stmt_reset(TAOS_STMT* stmt) {
  STscStmt* pStmt = (STscStmt*)stmt;
  if (pStmt->isInsert) {
    return insertStmtReset(pStmt);
  }
  return TSDB_CODE_SUCCESS;
}
