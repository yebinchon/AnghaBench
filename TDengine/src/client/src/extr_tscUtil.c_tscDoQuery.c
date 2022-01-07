
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ command; int isInsertFromFile; } ;
struct TYPE_9__ {void* fp; TYPE_2__ cmd; } ;
typedef TYPE_1__ SSqlObj ;
typedef TYPE_2__ SSqlCmd ;


 scalar_t__ TSDB_SQL_LOCAL ;
 scalar_t__ TSDB_SQL_SELECT ;
 int tscAddIntoSqlList (TYPE_1__*) ;
 int tscProcessLocalCmd (TYPE_1__*) ;
 int tscProcessMultiVnodesInsert (TYPE_1__*) ;
 int tscProcessMultiVnodesInsertForFile (TYPE_1__*) ;
 int tscProcessSql (TYPE_1__*) ;

void tscDoQuery(SSqlObj* pSql) {
  SSqlCmd* pCmd = &pSql->cmd;
  void* fp = pSql->fp;

  if (pCmd->command > TSDB_SQL_LOCAL) {
    tscProcessLocalCmd(pSql);
  } else {
    if (pCmd->command == TSDB_SQL_SELECT) {
      tscAddIntoSqlList(pSql);
    }

    if (pCmd->isInsertFromFile == 1) {
      tscProcessMultiVnodesInsertForFile(pSql);
    } else {

      tscProcessSql(pSql);
      if (((void*)0) == fp) tscProcessMultiVnodesInsert(pSql);
    }
  }
}
