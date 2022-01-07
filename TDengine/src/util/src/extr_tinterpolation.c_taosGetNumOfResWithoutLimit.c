
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_4__ {scalar_t__ order; int numOfRawDataInRows; scalar_t__ startTimestamp; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_1__ SInterpolationInfo ;


 scalar_t__ INTERPOL_IS_ASC_INTERPOL (TYPE_1__*) ;
 scalar_t__ TSQL_SO_ASC ;
 int assert (int) ;
 scalar_t__ labs (scalar_t__) ;

int32_t taosGetNumOfResWithoutLimit(SInterpolationInfo* pInterpoInfo, int64_t* pPrimaryKeyArray,
                                    int32_t numOfAvailRawData, int64_t nInterval, int64_t ekey) {
  if (numOfAvailRawData > 0) {
    int32_t finalNumOfResult = 0;

    if (pInterpoInfo->order == TSQL_SO_ASC) {

      int64_t lastKey = pPrimaryKeyArray[pInterpoInfo->numOfRawDataInRows - 1];
      finalNumOfResult = (int32_t)((lastKey - pInterpoInfo->startTimestamp) / nInterval) + 1;
    } else {
      TSKEY lastKey = pPrimaryKeyArray[0];
      finalNumOfResult = (int32_t)((pInterpoInfo->startTimestamp - lastKey) / nInterval) + 1;
    }

    assert(finalNumOfResult >= numOfAvailRawData);
    return finalNumOfResult;
  } else {

    if ((ekey < pInterpoInfo->startTimestamp && INTERPOL_IS_ASC_INTERPOL(pInterpoInfo)) ||
        (ekey > pInterpoInfo->startTimestamp && !INTERPOL_IS_ASC_INTERPOL(pInterpoInfo))) {
      return 0;
    } else {
      return (int32_t)(labs(ekey - pInterpoInfo->startTimestamp) / nInterval) + 1;
    }
  }
}
