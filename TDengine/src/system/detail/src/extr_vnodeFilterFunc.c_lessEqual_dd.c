
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double upperBndd; } ;
struct TYPE_5__ {TYPE_1__ filterInfo; } ;
typedef TYPE_2__ SColumnFilterElem ;



bool lessEqual_dd(SColumnFilterElem *pFilter, char *minval, char *maxval) {
  return (*(double *)minval <= pFilter->filterInfo.upperBndd);
}
