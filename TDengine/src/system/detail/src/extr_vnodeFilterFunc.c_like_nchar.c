
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {scalar_t__ pz; } ;
struct TYPE_5__ {int bytes; TYPE_1__ filterInfo; } ;
typedef int SPatternCompareInfo ;
typedef TYPE_2__ SColumnFilterElem ;


 int PATTERN_COMPARE_INFO_INITIALIZER ;
 int TSDB_NCHAR_SIZE ;
 scalar_t__ TSDB_PATTERN_MATCH ;
 scalar_t__ WCSPatternMatch (int *,int *,int,int *) ;

bool like_nchar(SColumnFilterElem* pFilter, char* minval, char *maxval) {
  SPatternCompareInfo info = PATTERN_COMPARE_INFO_INITIALIZER;

  return WCSPatternMatch((wchar_t*) pFilter->filterInfo.pz, (wchar_t*) minval, pFilter->bytes/TSDB_NCHAR_SIZE, &info) == TSDB_PATTERN_MATCH;
}
