
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
typedef int int16_t ;
struct TYPE_6__ {scalar_t__ bytes; } ;
struct TYPE_5__ {int numOfTags; int numOfColumns; scalar_t__ schema; } ;
typedef TYPE_1__ STabObj ;
typedef TYPE_2__ SSchema ;


 scalar_t__ TSDB_MAX_TAGS ;
 scalar_t__ TSDB_METER_NAME_LEN ;
 int assert (int) ;
 scalar_t__ mgmtIsMetric (TYPE_1__*) ;

__attribute__((used)) static int32_t mgmtGetReqTagsLength(STabObj *pMetric, int16_t *cols, int32_t numOfCols) {
  assert(mgmtIsMetric(pMetric) && numOfCols >= 0 && numOfCols <= TSDB_MAX_TAGS + 1);

  int32_t len = 0;
  for (int32_t i = 0; i < numOfCols; ++i) {
    assert(cols[i] < pMetric->numOfTags);
    if (cols[i] == -1) {
      len += TSDB_METER_NAME_LEN;
    } else {
      len += ((SSchema *)pMetric->schema)[pMetric->numOfColumns + cols[i]].bytes;
    }
  }

  return len;
}
