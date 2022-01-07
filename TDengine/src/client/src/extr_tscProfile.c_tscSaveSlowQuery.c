
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_6__ {scalar_t__ const useconds; } ;
struct TYPE_8__ {char* sqlstr; TYPE_2__* pTscObj; TYPE_1__ res; int stime; } ;
struct TYPE_7__ {char* user; } ;
typedef TYPE_3__ SSqlObj ;


 int TSDB_SHOW_SQL_LEN ;
 char* malloc (int) ;
 int snprintf (char*,int,char*,char*,...) ;
 int strcpy (char*,char*) ;
 int taosTmrStart (int ,int,char*,int ) ;
 char* tsMonitorDbName ;
 int tscSaveSlowQueryFp ;
 int tscTmr ;
 int tscTrace (char*,TYPE_3__*,scalar_t__ const,char*) ;

void tscSaveSlowQuery(SSqlObj *pSql) {
  const static int64_t SLOW_QUERY_INTERVAL = 3000000L;
  if (pSql->res.useconds < SLOW_QUERY_INTERVAL) return;

  tscTrace("%p query time:%lld sql:%s", pSql, pSql->res.useconds, pSql->sqlstr);

  char *sql = malloc(200);
  int len = snprintf(sql, 200, "insert into %s.slowquery values(now, '%s', %lld, %lld, '", tsMonitorDbName,
          pSql->pTscObj->user, pSql->stime, pSql->res.useconds);
  int sqlLen = snprintf(sql + len, TSDB_SHOW_SQL_LEN, "%s", pSql->sqlstr);
  if (sqlLen > TSDB_SHOW_SQL_LEN - 1) {
    sqlLen = len + TSDB_SHOW_SQL_LEN - 1;
  } else {
    sqlLen += len;
  }
  strcpy(sql + sqlLen, "')");

  taosTmrStart(tscSaveSlowQueryFp, 200, sql, tscTmr);
}
