
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {scalar_t__ offset; } ;
struct TYPE_6__ {TYPE_1__ limit; } ;
typedef TYPE_2__ SQuery ;


 int vnodeDoFilterData (TYPE_2__*,int ) ;

bool vnodeFilterData(SQuery* pQuery, int32_t* numOfActualRead, int32_t index) {
  (*numOfActualRead)++;
  if (!vnodeDoFilterData(pQuery, index)) {
    return 0;
  }

  if (pQuery->limit.offset > 0) {
    pQuery->limit.offset--;
    return 0;
  }

  return 1;
}
