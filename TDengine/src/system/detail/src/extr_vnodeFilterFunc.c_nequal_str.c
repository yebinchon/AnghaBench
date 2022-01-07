
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; scalar_t__ pz; } ;
struct TYPE_5__ {scalar_t__ bytes; TYPE_1__ filterInfo; } ;
typedef TYPE_2__ SColumnFilterElem ;


 scalar_t__ strncmp (char*,char*,scalar_t__) ;

bool nequal_str(SColumnFilterElem *pFilter, char *minval, char *maxval) {
  if (pFilter->filterInfo.len > pFilter->bytes) {
    return 1;
  }

  return strncmp((char *)pFilter->filterInfo.pz, minval, pFilter->bytes) != 0;
}
