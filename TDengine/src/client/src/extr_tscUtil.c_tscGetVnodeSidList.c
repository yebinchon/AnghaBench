
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_3__ {scalar_t__ numOfVnodes; scalar_t__ numOfMeters; int* list; } ;
typedef int SVnodeSidList ;
typedef TYPE_1__ SMetricMeta ;


 int tscError (char*,...) ;

SVnodeSidList* tscGetVnodeSidList(SMetricMeta* pMetricmeta, int32_t vnodeIdx) {
  if (pMetricmeta == ((void*)0)) {
    tscError("illegal metricmeta");
    return 0;
  }

  if (pMetricmeta->numOfVnodes == 0 || pMetricmeta->numOfMeters == 0) {
    return 0;
  }

  if (vnodeIdx < 0 || vnodeIdx >= pMetricmeta->numOfVnodes) {
    int32_t vnodeRange = (pMetricmeta->numOfVnodes > 0) ? (pMetricmeta->numOfVnodes - 1) : 0;
    tscError("illegal vnodeIdx:%d, reset to 0, vnodeIdx range:%d-%d", vnodeIdx, 0, vnodeRange);

    vnodeIdx = 0;
  }

  return (SVnodeSidList*)(pMetricmeta->list[vnodeIdx] + (char*)pMetricmeta);
}
