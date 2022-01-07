
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_13__ {scalar_t__ type; int n; char* z; } ;
struct TYPE_10__ {int order; } ;
struct TYPE_12__ {int payload; TYPE_2__ order; } ;
struct TYPE_11__ {TYPE_4__ cmd; TYPE_1__* pTscObj; } ;
struct TYPE_9__ {int writeAuth; } ;
typedef TYPE_3__ SSqlObj ;
typedef TYPE_4__ SSqlCmd ;
typedef TYPE_5__ SSQLToken ;


 scalar_t__ TK_IMPORT ;
 scalar_t__ TK_INSERT ;
 scalar_t__ TK_INTO ;
 int TSDB_CODE_INVALID_SQL ;
 int TSDB_CODE_NO_RIGHTS ;
 int TSQL_SO_ASC ;
 int sprintf (int ,char*,char*) ;
 int strcpy (int ,char*) ;
 TYPE_5__ tStrGetToken (char*,int*,int,int ,int *) ;
 int tsParseInsertStatement (TYPE_3__*,char*,char*,char*) ;

int tsParseInsertSql(SSqlObj *pSql, char *sql, char *acct, char *db) {
  if (!pSql->pTscObj->writeAuth) {
    return TSDB_CODE_NO_RIGHTS;
  }

  int32_t index = 0;
  SSqlCmd *pCmd = &pSql->cmd;

  SSQLToken sToken = tStrGetToken(sql, &index, 0, 0, ((void*)0));
  if (sToken.type == TK_IMPORT) {
      pCmd->order.order = TSQL_SO_ASC;
  } else if (sToken.type != TK_INSERT) {
    if (sToken.n) {
      sToken.z[sToken.n] = 0;
      sprintf(pCmd->payload, "invalid keyword:%s", sToken.z);
    } else {
      strcpy(pCmd->payload, "no any keywords");
    }
    return TSDB_CODE_INVALID_SQL;
  }

  sToken = tStrGetToken(sql, &index, 0, 0, ((void*)0));
  if (sToken.type != TK_INTO) {
    strcpy(pCmd->payload, "keyword INTO is expected");
    return TSDB_CODE_INVALID_SQL;
  }

  return tsParseInsertStatement(pSql, sql + index, acct, db);
}
