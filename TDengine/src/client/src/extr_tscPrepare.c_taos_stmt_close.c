
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_6__ {scalar_t__ numParams; TYPE_1__* sql; TYPE_1__* parts; TYPE_1__* params; } ;
struct TYPE_5__ {int pSql; TYPE_2__ normal; int isInsert; } ;
typedef int TAOS_STMT ;
typedef TYPE_1__ STscStmt ;
typedef TYPE_2__ SNormalStmt ;


 int TSDB_CODE_SUCCESS ;
 int free (TYPE_1__*) ;
 int tVariantDestroy (TYPE_1__*) ;
 int tscFreeSqlObj (int ) ;

int taos_stmt_close(TAOS_STMT* stmt) {
  STscStmt* pStmt = (STscStmt*)stmt;
  if (!pStmt->isInsert) {
    SNormalStmt* normal = &pStmt->normal;
    if (normal->params != ((void*)0)) {
      for (uint16_t i = 0; i < normal->numParams; i++) {
        tVariantDestroy(normal->params + i);
      }
      free(normal->params);
    }
    free(normal->parts);
    free(normal->sql);
  }

  tscFreeSqlObj(pStmt->pSql);
  free(pStmt);
  return TSDB_CODE_SUCCESS;
}
