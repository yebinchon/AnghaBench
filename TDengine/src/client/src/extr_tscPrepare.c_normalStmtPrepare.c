
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int tVariant ;
struct TYPE_10__ {scalar_t__ numParams; int * params; } ;
struct TYPE_9__ {size_t n; scalar_t__ type; int member_0; } ;
struct TYPE_8__ {TYPE_1__* pSql; TYPE_4__ normal; } ;
struct TYPE_7__ {char* sqlstr; } ;
typedef TYPE_2__ STscStmt ;
typedef TYPE_3__ SSQLToken ;
typedef TYPE_4__ SNormalStmt ;


 scalar_t__ TK_QUESTION ;
 int TSDB_CODE_CLI_OUT_OF_MEMORY ;
 int TSDB_CODE_SUCCESS ;
 int * calloc (scalar_t__,int) ;
 int normalStmtAddPart (TYPE_4__*,int,char*,size_t) ;
 size_t tSQLGetToken (char*,scalar_t__*) ;

__attribute__((used)) static int normalStmtPrepare(STscStmt* stmt) {
  SNormalStmt* normal = &stmt->normal;
  char* sql = stmt->pSql->sqlstr;
  uint32_t i = 0, start = 0;

  while (sql[i] != 0) {
    SSQLToken token = {0};
    token.n = tSQLGetToken(sql + i, &token.type);

    if (token.type == TK_QUESTION) {
      sql[i] = 0;
      if (i > start) {
        int code = normalStmtAddPart(normal, 0, sql + start, i - start);
        if (code != TSDB_CODE_SUCCESS) {
          return code;
        }
      }
      int code = normalStmtAddPart(normal, 1, ((void*)0), 0);
      if (code != TSDB_CODE_SUCCESS) {
        return code;
      }
      start = i + token.n;
    }

    i += token.n;
  }

  if (i > start) {
    int code = normalStmtAddPart(normal, 0, sql + start, i - start);
    if (code != TSDB_CODE_SUCCESS) {
      return code;
    }
  }

  if (normal->numParams > 0) {
    normal->params = calloc(normal->numParams, sizeof(tVariant));
    if (normal->params == ((void*)0)) {
      return TSDB_CODE_CLI_OUT_OF_MEMORY;
    }
  }

  return TSDB_CODE_SUCCESS;
}
