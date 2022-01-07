
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float upperBndd; float lowerBndd; } ;
struct TYPE_5__ {TYPE_1__ filterInfo; } ;
typedef TYPE_2__ SColumnFilterElem ;



bool rangeFilter_ds_ei(SColumnFilterElem *pFilter, char *minval, char *maxval) {
  return (*(float *)minval <= pFilter->filterInfo.upperBndd && *(float *)maxval > pFilter->filterInfo.lowerBndd);
}
