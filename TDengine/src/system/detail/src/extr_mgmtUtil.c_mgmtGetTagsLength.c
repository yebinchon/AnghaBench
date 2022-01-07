
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_6__ {scalar_t__ bytes; } ;
struct TYPE_5__ {scalar_t__ numOfColumns; scalar_t__ numOfTags; scalar_t__ schema; } ;
typedef TYPE_1__ STabObj ;
typedef TYPE_2__ SSchema ;


 int assert (int) ;
 scalar_t__ mgmtIsMetric (TYPE_1__*) ;

int32_t mgmtGetTagsLength(STabObj* pMetric, int32_t col) {
  assert(mgmtIsMetric(pMetric) && col >= 0);

  int32_t len = 0;
  int32_t tagColumnIndexOffset = pMetric->numOfColumns;

  for (int32_t i = 0; i < pMetric->numOfTags && i < col; ++i) {
    len += ((SSchema*)pMetric->schema)[tagColumnIndexOffset + i].bytes;
  }

  return len;
}
