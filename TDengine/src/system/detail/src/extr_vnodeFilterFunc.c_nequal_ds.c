
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float lowerBndd; } ;
struct TYPE_5__ {TYPE_1__ filterInfo; } ;
typedef TYPE_2__ SColumnFilterElem ;



bool nequal_ds(SColumnFilterElem *pFilter, char *minval, char *maxval) {
  if (*(float *)minval == *(float *)maxval) {
    return (*(float *)minval != pFilter->filterInfo.lowerBndd);
  }

  return 1;
}
