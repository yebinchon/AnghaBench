
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {int cmd; } ;
struct TYPE_6__ {TYPE_3__* pSql; int precision; int slidingTime; } ;
typedef int TAOS_RES ;
typedef TYPE_1__ SSqlStream ;
typedef int SMeterMetaInfo ;


 int taos_fetch_rows_a (int *,int ,void*) ;
 int tscClearMeterMetaInfo (int *,int) ;
 int tscError (char*,TYPE_3__*,TYPE_1__*,int,int ) ;
 int * tscGetMeterMetaInfo (int *,int ) ;
 int tscGetRetryDelayTime (int ,int ) ;
 int tscProcessStreamRetrieveResult ;
 int tscSetRetryTimer (TYPE_1__*,TYPE_3__*,int ) ;

__attribute__((used)) static void tscProcessStreamQueryCallback(void *param, TAOS_RES *tres, int numOfRows) {
  SSqlStream *pStream = (SSqlStream *)param;
  if (tres == ((void*)0) || numOfRows < 0) {
    int64_t retryDelay = tscGetRetryDelayTime(pStream->slidingTime, pStream->precision);
    tscError("%p stream:%p, query data failed, code:%d, retry in %lldms", pStream->pSql, pStream, numOfRows,
             retryDelay);

    SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(&pStream->pSql->cmd, 0);
    tscClearMeterMetaInfo(pMeterMetaInfo, 1);

    tscSetRetryTimer(pStream, pStream->pSql, retryDelay);
    return;
  }

  taos_fetch_rows_a(tres, tscProcessStreamRetrieveResult, param);
}
