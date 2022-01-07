
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tOrderDescriptor ;
typedef int tExtMemBuffer ;
typedef int tColModel ;
typedef scalar_t__ int32_t ;
struct TYPE_11__ {int code; } ;
struct TYPE_10__ {int command; } ;
struct TYPE_13__ {TYPE_2__ res; TYPE_1__ cmd; } ;
struct TYPE_12__ {int queryMutex; struct TYPE_12__* localBuffer; } ;
typedef TYPE_3__ SSubqueryState ;
typedef TYPE_4__ SSqlObj ;
typedef TYPE_3__ SRetrieveSupport ;


 int TSDB_CODE_CLI_OUT_OF_MEMORY ;
 int TSDB_SQL_RETRIEVE_METRIC ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tfree (TYPE_3__*) ;
 int tscLocalReducerEnvDestroy (int **,int *,int *,scalar_t__) ;

__attribute__((used)) static void doCleanupSubqueries(SSqlObj *pSql, int32_t vnodeIndex, int32_t numOfVnodes, SRetrieveSupport *pTrs,
                                tOrderDescriptor *pDesc, tColModel *pModel, tExtMemBuffer **pMemoryBuf,
                                SSubqueryState *pState) {
  pSql->cmd.command = TSDB_SQL_RETRIEVE_METRIC;
  pSql->res.code = TSDB_CODE_CLI_OUT_OF_MEMORY;





  if (vnodeIndex == 0) {
    tscLocalReducerEnvDestroy(pMemoryBuf, pDesc, pModel, numOfVnodes);
    tfree(pState);

    if (pTrs != ((void*)0)) {
      tfree(pTrs->localBuffer);

      pthread_mutex_unlock(&pTrs->queryMutex);
      pthread_mutex_destroy(&pTrs->queryMutex);
      tfree(pTrs);
    }
  }
}
