
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int16_t ;
struct TYPE_4__ {scalar_t__ upperBndi; } ;
struct TYPE_5__ {TYPE_1__ filterInfo; } ;
typedef TYPE_2__ SColumnFilterElem ;



bool less_i16(SColumnFilterElem *pFilter, char *minval, char *maxval) {
  return (*(int16_t *)minval < pFilter->filterInfo.upperBndi);
}
