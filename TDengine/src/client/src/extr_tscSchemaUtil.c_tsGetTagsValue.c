
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_3__ {int numOfColumns; int numOfTags; } ;
typedef int SSchema ;
typedef TYPE_1__ SMeterMeta ;



char* tsGetTagsValue(SMeterMeta* pMeta) {
  int32_t numOfTotalCols = pMeta->numOfColumns + pMeta->numOfTags;
  uint32_t offset = sizeof(SMeterMeta) + numOfTotalCols * sizeof(SSchema);

  return ((char*)pMeta + offset);
}
