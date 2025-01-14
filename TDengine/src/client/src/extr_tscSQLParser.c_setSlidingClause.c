
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_15__ {TYPE_1__* pMeterMeta; } ;
struct TYPE_13__ {scalar_t__ n; int z; } ;
struct TYPE_14__ {TYPE_3__ sliding; } ;
struct TYPE_12__ {int nSlidingTime; int nAggTimeInterval; } ;
struct TYPE_11__ {scalar_t__ precision; } ;
typedef TYPE_2__ SSqlCmd ;
typedef TYPE_3__ SSQLToken ;
typedef TYPE_4__ SQuerySQL ;
typedef TYPE_5__ SMeterMetaInfo ;


 int TSDB_CODE_INVALID_SQL ;
 int TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_TIME_PRECISION_MILLI ;
 int getTimestampInUsFromStr (int ,scalar_t__,int*) ;
 int setErrMsg (TYPE_2__*,char const*) ;
 int tsMinSlidingTime ;
 TYPE_5__* tscGetMeterMetaInfo (TYPE_2__*,int ) ;

int32_t setSlidingClause(SSqlCmd* pCmd, SQuerySQL* pQuerySql) {
  const char* msg0 = "sliding value too small";
  const char* msg1 = "sliding value no larger than the interval value";

  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
  SSQLToken* pSliding = &pQuerySql->sliding;

  if (pSliding->n != 0) {
    getTimestampInUsFromStr(pSliding->z, pSliding->n, &pCmd->nSlidingTime);
    if (pMeterMetaInfo->pMeterMeta->precision == TSDB_TIME_PRECISION_MILLI) {
      pCmd->nSlidingTime /= 1000;
    }

    if (pCmd->nSlidingTime < tsMinSlidingTime) {
      setErrMsg(pCmd, msg0);
      return TSDB_CODE_INVALID_SQL;
    }

    if (pCmd->nSlidingTime > pCmd->nAggTimeInterval) {
      setErrMsg(pCmd, msg1);
      return TSDB_CODE_INVALID_SQL;
    }
  }

  return TSDB_CODE_SUCCESS;
}
