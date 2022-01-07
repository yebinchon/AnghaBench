
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ isInsert; } ;
typedef int TAOS_STMT ;
typedef int TAOS_BIND ;
typedef TYPE_1__ STscStmt ;


 int insertStmtBindParam (TYPE_1__*,int *) ;
 int normalStmtBindParam (TYPE_1__*,int *) ;

int taos_stmt_bind_param(TAOS_STMT* stmt, TAOS_BIND* bind) {
  STscStmt* pStmt = (STscStmt*)stmt;
  if (pStmt->isInsert) {
    return insertStmtBindParam(pStmt, bind);
  }
  return normalStmtBindParam(pStmt, bind);
}
