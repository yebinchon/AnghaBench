
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* sqlstr; } ;
struct TYPE_5__ {TYPE_2__* pSql; int taos; scalar_t__ isInsert; } ;
typedef int TAOS_STMT ;
typedef TYPE_1__ STscStmt ;


 int TSDB_CODE_CLI_OUT_OF_MEMORY ;
 int insertStmtExecute (TYPE_1__*) ;
 char* normalStmtBuildSql (TYPE_1__*) ;
 int taos_query_imp (int ,TYPE_2__*) ;
 int tfree (char*) ;

int taos_stmt_execute(TAOS_STMT* stmt) {
  int ret = 0;
  STscStmt* pStmt = (STscStmt*)stmt;
  if (pStmt->isInsert) {
    ret = insertStmtExecute(pStmt);
  } else {
    char* sql = normalStmtBuildSql(pStmt);
    if (sql == ((void*)0)) {
      ret = TSDB_CODE_CLI_OUT_OF_MEMORY;
    } else {
      tfree(pStmt->pSql->sqlstr);
      pStmt->pSql->sqlstr = sql;
      ret = taos_query_imp(pStmt->taos, pStmt->pSql);
    }
  }
  return ret;
}
