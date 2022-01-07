
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int int32_t ;
typedef int TSKEY ;
typedef int SInterpolationInfo ;


 int taosGetNumOfResWithoutLimit (int *,int *,int ,int ,int ) ;

int32_t taosGetNumOfResultWithInterpo(SInterpolationInfo* pInterpoInfo, TSKEY* pPrimaryKeyArray,
                                      int32_t numOfRawDataInRows, int64_t nInterval, int64_t ekey,
                                      int32_t maxNumOfRows) {
  int32_t numOfRes = taosGetNumOfResWithoutLimit(pInterpoInfo, pPrimaryKeyArray, numOfRawDataInRows, nInterval, ekey);
  return (numOfRes > maxNumOfRows) ? maxNumOfRows : numOfRes;
}
