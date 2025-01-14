
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int numOfOrderedCols; scalar_t__* pData; } ;
struct TYPE_13__ {TYPE_1__ orderIdx; } ;
typedef TYPE_2__ tOrderDescriptor ;
struct TYPE_14__ {int data; } ;
typedef TYPE_3__ tFilePage ;
typedef int int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_17__ {scalar_t__ functionId; } ;
struct TYPE_16__ {TYPE_2__* pDesc; } ;
struct TYPE_15__ {scalar_t__ nAggTimeInterval; } ;
typedef TYPE_4__ SSqlCmd ;
typedef TYPE_5__ SLocalReducer ;


 scalar_t__ PRIMARYKEY_TIMESTAMP_COL_INDEX ;
 scalar_t__ TSDB_FUNC_ARITHM ;
 scalar_t__ TSDB_FUNC_PRJ ;
 int assert (int) ;
 int compare_a (TYPE_2__*,int,int ,char*,int,int ,int ) ;
 TYPE_6__* tscSqlExprGet (TYPE_4__*,int ) ;

bool isSameGroup(SSqlCmd *pCmd, SLocalReducer *pReducer, char *pPrev, tFilePage *tmpBuffer) {
  int16_t functionId = tscSqlExprGet(pCmd, 0)->functionId;


  if (functionId == TSDB_FUNC_PRJ || functionId == TSDB_FUNC_ARITHM) {
    return 0;
  }

  tOrderDescriptor *pOrderDesc = pReducer->pDesc;
  int32_t numOfCols = pOrderDesc->orderIdx.numOfOrderedCols;


  if (numOfCols <= 0) {
    return 1;
  }

  if (pOrderDesc->orderIdx.pData[numOfCols - 1] == PRIMARYKEY_TIMESTAMP_COL_INDEX) {

    assert(pCmd->nAggTimeInterval > 0);
    pOrderDesc->orderIdx.numOfOrderedCols -= 1;
  } else {
    assert(pCmd->nAggTimeInterval == 0);
  }


  int32_t ret = compare_a(pOrderDesc, 1, 0, pPrev, 1, 0, tmpBuffer->data);
  pOrderDesc->orderIdx.numOfOrderedCols = numOfCols;

  return (ret == 0);
}
