
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pSql; } ;
typedef int TAOS_STMT ;
typedef int TAOS_RES ;
typedef TYPE_1__ STscStmt ;


 int tscError (char*) ;

TAOS_RES *taos_stmt_use_result(TAOS_STMT* stmt) {
  if (stmt == ((void*)0)) {
    tscError("statement is invalid.");
    return ((void*)0);
  }

  STscStmt* pStmt = (STscStmt*)stmt;
  if (pStmt->pSql == ((void*)0)) {
    tscError("result has been used already.");
    return ((void*)0);
  }

  TAOS_RES* result = pStmt->pSql;
  pStmt->pSql = ((void*)0);
  return result;
}
