
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int int32_t ;



__attribute__((used)) static int32_t tabObjPointerComparator(const void* pLeft, const void* pRight) {
  int64_t ret = (int64_t)pLeft - (int64_t)pRight;
  if (ret == 0) {
    return 0;
  } else {
    return ret > 0 ? 1 : -1;
  }
}
