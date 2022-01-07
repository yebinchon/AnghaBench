
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_10__ {int nStatus; } ;
struct TYPE_9__ {scalar_t__ functionId; } ;
struct TYPE_7__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_8__ {TYPE_1__ fieldsInfo; } ;
typedef TYPE_2__ SSqlCmd ;


 int TSDB_FUNCSTATE_SELECTIVITY ;
 scalar_t__ TSDB_FUNC_TAG_DUMMY ;
 TYPE_6__* aAggs ;
 TYPE_3__* tscSqlExprGet (TYPE_2__*,scalar_t__) ;

bool tscIsSelectivityWithTagQuery(SSqlCmd* pCmd) {
  bool hasTags = 0;
  int32_t numOfSelectivity = 0;

  for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
    int32_t functId = tscSqlExprGet(pCmd, i)->functionId;
    if (functId == TSDB_FUNC_TAG_DUMMY) {
      hasTags = 1;
      continue;
    }

    if ((aAggs[functId].nStatus & TSDB_FUNCSTATE_SELECTIVITY) != 0) {
      numOfSelectivity++;
    }
  }

  if (numOfSelectivity > 0 && hasTags) {
    return 1;
  }

  return 0;
}
