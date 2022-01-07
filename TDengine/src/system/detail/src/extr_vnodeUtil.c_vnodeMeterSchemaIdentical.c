
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int SColumn ;


 int VALIDNUMOFCOLS (int) ;
 scalar_t__ memcmp (char*,char*,int) ;

bool vnodeMeterSchemaIdentical(SColumn* pSchema1, int32_t numOfCols1, SColumn* pSchema2, int32_t numOfCols2) {
  if (!VALIDNUMOFCOLS(numOfCols1) || !VALIDNUMOFCOLS(numOfCols2) || numOfCols1 != numOfCols2) {
    return 0;
  }

  return memcmp((char*)pSchema1, (char*)pSchema2, sizeof(SColumn) * numOfCols1) == 0;
}
