
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double lowerBndd; } ;
struct TYPE_5__ {TYPE_1__ filterInfo; } ;
typedef TYPE_2__ SColumnFilterElem ;



bool nequal_dd(SColumnFilterElem *pFilter, char *minval, char *maxval) {
  if (*(double *)minval == *(double *)maxval) {
    return (*(double *)minval != pFilter->filterInfo.lowerBndd);
  }

  return 1;
}
