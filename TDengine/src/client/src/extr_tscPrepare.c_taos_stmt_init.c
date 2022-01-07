
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* pTscObj; struct TYPE_9__* signature; int emptyRspSem; int rspSem; } ;
struct TYPE_8__ {struct TYPE_8__* signature; } ;
struct TYPE_7__ {TYPE_4__* pSql; } ;
typedef TYPE_1__ TAOS_STMT ;
typedef int TAOS ;
typedef TYPE_1__ STscStmt ;
typedef TYPE_3__ STscObj ;
typedef TYPE_4__ SSqlObj ;


 int TSDB_CODE_CLI_OUT_OF_MEMORY ;
 int TSDB_CODE_DISCONNECTED ;
 void* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int globalCode ;
 int tscError (char*) ;
 int tsem_init (int *,int ,int) ;

TAOS_STMT* taos_stmt_init(TAOS* taos) {
  STscObj* pObj = (STscObj*)taos;
  if (pObj == ((void*)0) || pObj->signature != pObj) {
    globalCode = TSDB_CODE_DISCONNECTED;
    tscError("connection disconnected");
    return ((void*)0);
  }

  STscStmt* pStmt = calloc(1, sizeof(STscStmt));
  if (pStmt == ((void*)0)) {
    globalCode = TSDB_CODE_CLI_OUT_OF_MEMORY;
    tscError("failed to allocate memory for statement");
    return ((void*)0);
  }

  SSqlObj* pSql = calloc(1, sizeof(SSqlObj));
  if (pSql == ((void*)0)) {
    free(pStmt);
    globalCode = TSDB_CODE_CLI_OUT_OF_MEMORY;
    tscError("failed to allocate memory for statement");
    return ((void*)0);
  }

  tsem_init(&pSql->rspSem, 0, 0);
  tsem_init(&pSql->emptyRspSem, 0, 1);
  pSql->signature = pSql;
  pSql->pTscObj = pObj;

  pStmt->pSql = pSql;
  return pStmt;
}
