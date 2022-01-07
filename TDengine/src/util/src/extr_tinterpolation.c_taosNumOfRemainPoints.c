
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int rowIdx; scalar_t__ numOfRawDataInRows; } ;
typedef TYPE_1__ SInterpolationInfo ;


 scalar_t__ INTERPOL_IS_ASC_INTERPOL (TYPE_1__*) ;

int32_t taosNumOfRemainPoints(SInterpolationInfo* pInterpoInfo) {
  if (pInterpoInfo->rowIdx == -1 || pInterpoInfo->numOfRawDataInRows == 0) {
    return 0;
  }

  return INTERPOL_IS_ASC_INTERPOL(pInterpoInfo) ? (pInterpoInfo->numOfRawDataInRows - pInterpoInfo->rowIdx)
                                                : pInterpoInfo->rowIdx + 1;
}
