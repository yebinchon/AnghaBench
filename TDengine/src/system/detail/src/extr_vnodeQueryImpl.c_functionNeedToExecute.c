
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_3__ {scalar_t__ complete; } ;
typedef TYPE_1__ SResultInfo ;
typedef int SQueryRuntimeEnv ;
typedef int SQLFunctionCtx ;


 TYPE_1__* GET_RES_INFO (int *) ;
 int IS_MASTER_SCAN (int *) ;
 scalar_t__ TSDB_FUNC_FIRST ;
 scalar_t__ TSDB_FUNC_FIRST_DST ;
 scalar_t__ TSDB_FUNC_LAST ;
 scalar_t__ TSDB_FUNC_LAST_DST ;
 scalar_t__ TSDB_FUNC_TAG ;
 scalar_t__ TSDB_FUNC_TAG_DUMMY ;
 scalar_t__ TSDB_FUNC_TS ;
 scalar_t__ TSDB_FUNC_TS_DUMMY ;

__attribute__((used)) static bool functionNeedToExecute(SQueryRuntimeEnv *pRuntimeEnv, SQLFunctionCtx *pCtx, int32_t functionId) {
  SResultInfo *pResInfo = GET_RES_INFO(pCtx);

  if (pResInfo->complete || functionId == TSDB_FUNC_TAG_DUMMY || functionId == TSDB_FUNC_TS_DUMMY) {
    return 0;
  }

  if (!IS_MASTER_SCAN(pRuntimeEnv) &&
      !(functionId == TSDB_FUNC_LAST_DST || functionId == TSDB_FUNC_FIRST_DST || functionId == TSDB_FUNC_FIRST ||
        functionId == TSDB_FUNC_LAST || functionId == TSDB_FUNC_TAG || functionId == TSDB_FUNC_TS)) {
    return 0;
  }

  return 1;
}
