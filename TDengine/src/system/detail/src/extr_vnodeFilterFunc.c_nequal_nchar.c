
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int len; scalar_t__ pz; } ;
struct TYPE_5__ {int bytes; TYPE_1__ filterInfo; } ;
typedef TYPE_2__ SColumnFilterElem ;


 int TSDB_NCHAR_SIZE ;
 scalar_t__ wcsncmp (int *,int *,int) ;

bool nequal_nchar(SColumnFilterElem *pFilter, char* minval, char *maxval) {
  if (pFilter->filterInfo.len > pFilter->bytes) {
    return 1;
  }

  return wcsncmp((wchar_t *)pFilter->filterInfo.pz, (wchar_t*)minval, pFilter->bytes/TSDB_NCHAR_SIZE) != 0;
}
