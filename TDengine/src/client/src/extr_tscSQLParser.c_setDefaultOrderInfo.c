
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* orderType; } ;
struct TYPE_8__ {int orderColId; void* order; } ;
struct TYPE_9__ {TYPE_1__ groupbyExpr; TYPE_2__ order; } ;
typedef TYPE_3__ SSqlCmd ;
typedef int SMeterMetaInfo ;


 int PRIMARYKEY_TIMESTAMP_COL_INDEX ;
 void* TSQL_SO_ASC ;
 scalar_t__ UTIL_METER_IS_METRIC (int *) ;
 scalar_t__ isTopBottomQuery (TYPE_3__*) ;
 int * tscGetMeterMetaInfo (TYPE_3__*,int ) ;

__attribute__((used)) static void setDefaultOrderInfo(SSqlCmd* pCmd) {

  pCmd->order.order = TSQL_SO_ASC;
  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);

  if (isTopBottomQuery(pCmd)) {
    pCmd->order.order = TSQL_SO_ASC;
    pCmd->order.orderColId = PRIMARYKEY_TIMESTAMP_COL_INDEX;
  } else {
    pCmd->order.orderColId = -1;
  }


  if (UTIL_METER_IS_METRIC(pMeterMetaInfo)) {
    pCmd->groupbyExpr.orderType = TSQL_SO_ASC;
  }
}
