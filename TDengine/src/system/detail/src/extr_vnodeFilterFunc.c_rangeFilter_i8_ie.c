
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int8_t ;
struct TYPE_4__ {scalar_t__ upperBndi; scalar_t__ lowerBndi; } ;
struct TYPE_5__ {TYPE_1__ filterInfo; } ;
typedef TYPE_2__ SColumnFilterElem ;



bool rangeFilter_i8_ie(SColumnFilterElem *pFilter, char *minval, char *maxval) {
  return (*(int8_t *)minval < pFilter->filterInfo.upperBndi && *(int8_t *)maxval >= pFilter->filterInfo.lowerBndi);
}
