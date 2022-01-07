
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_8__ {int tsJoin; int * pJoinExpr; } ;
struct TYPE_7__ {int numOfTables; int type; } ;
typedef TYPE_1__ SSqlCmd ;
typedef int SMeterMetaInfo ;
typedef TYPE_2__ SCondExpr ;


 int QUERY_IS_JOIN_QUERY (int ) ;
 int TSDB_CODE_INVALID_SQL ;
 int TSDB_CODE_SUCCESS ;
 scalar_t__ UTIL_METER_IS_METRIC (int *) ;
 int setErrMsg (TYPE_1__*,char const*) ;
 int * tscGetMeterMetaInfo (TYPE_1__*,int ) ;

__attribute__((used)) static int32_t validateJoinExpr(SSqlCmd* pCmd, SCondExpr* pCondExpr) {
  const char* msg1 = "super table join requires tags column";
  const char* msg2 = "timestamp join condition missing";
  const char* msg3 = "condition missing for join query";

  if (!QUERY_IS_JOIN_QUERY(pCmd->type)) {
    if (pCmd->numOfTables == 1) {
      return TSDB_CODE_SUCCESS;
    } else {
      setErrMsg(pCmd, msg3);
      return TSDB_CODE_INVALID_SQL;
    }
  }

  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
  if (UTIL_METER_IS_METRIC(pMeterMetaInfo)) {

    if (pCondExpr->pJoinExpr == ((void*)0)) {
      setErrMsg(pCmd, msg1);
      return TSDB_CODE_INVALID_SQL;
    }
  }

  if (!pCondExpr->tsJoin) {
    setErrMsg(pCmd, msg2);
    return TSDB_CODE_INVALID_SQL;
  }

  return TSDB_CODE_SUCCESS;
}
