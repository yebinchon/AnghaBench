
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int batchSize; } ;
struct TYPE_6__ {TYPE_1__* pSql; } ;
struct TYPE_5__ {TYPE_3__ cmd; } ;
typedef TYPE_2__ STscStmt ;
typedef TYPE_3__ SSqlCmd ;


 int TSDB_CODE_SUCCESS ;

__attribute__((used)) static int insertStmtAddBatch(STscStmt* stmt) {
  SSqlCmd* pCmd = &stmt->pSql->cmd;
  if ((pCmd->batchSize % 2) == 1) {
    ++pCmd->batchSize;
  }
  return TSDB_CODE_SUCCESS;
}
