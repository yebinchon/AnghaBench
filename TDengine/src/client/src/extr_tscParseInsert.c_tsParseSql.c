
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_10__ {int member_0; } ;
struct TYPE_9__ {int sqlstr; int cmd; int * fp; int * fetchFp; } ;
typedef TYPE_1__ SSqlObj ;
typedef TYPE_2__ SSqlInfo ;


 int SQLInfoDestroy (TYPE_2__*) ;
 int TSDB_CODE_SUCCESS ;
 int TSDB_DEFAULT_PAYLOAD_SIZE ;
 int assert (int ) ;
 int tSQLParse (TYPE_2__*,int ) ;
 int tsParseInsertSql (TYPE_1__*,int ,char*,char*) ;
 int tscAllocPayload (int *,int ) ;
 int * tscAsyncInsertMultiVnodesProxy ;
 int tscCleanSqlCmd (int *) ;
 scalar_t__ tscIsInsertOrImportData (int ) ;
 int tscRemoveAllMeterMetaInfo (int *,int) ;
 int tscToSQLCmd (TYPE_1__*,TYPE_2__*) ;

int tsParseSql(SSqlObj *pSql, char *acct, char *db, bool multiVnodeInsertion) {
  int32_t ret = TSDB_CODE_SUCCESS;


  tscRemoveAllMeterMetaInfo(&pSql->cmd, 0);
  tscCleanSqlCmd(&pSql->cmd);

  if (tscIsInsertOrImportData(pSql->sqlstr)) {





    if (pSql->fp != ((void*)0) && multiVnodeInsertion) {
      assert(pSql->fetchFp == ((void*)0));
      pSql->fetchFp = pSql->fp;


      pSql->fp = tscAsyncInsertMultiVnodesProxy;
    }

    ret = tsParseInsertSql(pSql, pSql->sqlstr, acct, db);
  } else {
    ret = tscAllocPayload(&pSql->cmd, TSDB_DEFAULT_PAYLOAD_SIZE);
    if (TSDB_CODE_SUCCESS != ret) return ret;

    SSqlInfo SQLInfo = {0};
    tSQLParse(&SQLInfo, pSql->sqlstr);

    ret = tscToSQLCmd(pSql, &SQLInfo);
    SQLInfoDestroy(&SQLInfo);
  }
  return ret;
}
