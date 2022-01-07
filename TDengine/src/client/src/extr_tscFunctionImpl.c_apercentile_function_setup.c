
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pHisto; } ;
typedef int SQLFunctionCtx ;
typedef TYPE_1__ SAPercentileInfo ;


 int MAX_HISTOGRAM_BIN ;
 int function_setup (int *) ;
 TYPE_1__* getAPerctInfo (int *) ;
 int tHistogramCreateFrom (char*,int ) ;

__attribute__((used)) static bool apercentile_function_setup(SQLFunctionCtx *pCtx) {
  if (!function_setup(pCtx)) {
    return 0;
  }

  SAPercentileInfo *pInfo = getAPerctInfo(pCtx);

  char *tmp = (char *)pInfo + sizeof(SAPercentileInfo);
  pInfo->pHisto = tHistogramCreateFrom(tmp, MAX_HISTOGRAM_BIN);
  return 1;
}
