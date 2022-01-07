
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_12__ {scalar_t__ (* fp ) (TYPE_5__*,char*,char*) ;} ;
struct TYPE_11__ {size_t numOfFilterCols; TYPE_3__* pFilterInfo; } ;
struct TYPE_8__ {size_t bytes; int type; } ;
struct TYPE_9__ {TYPE_1__ data; } ;
struct TYPE_10__ {char* pData; size_t numOfFilters; TYPE_5__* pFilters; TYPE_2__ info; } ;
typedef TYPE_3__ SSingleColumnFilterInfo ;
typedef TYPE_4__ SQuery ;
typedef TYPE_5__ SColumnFilterElem ;


 scalar_t__ isNull (char*,int ) ;
 scalar_t__ stub1 (TYPE_5__*,char*,char*) ;

bool vnodeDoFilterData(SQuery* pQuery, int32_t elemPos) {
  for (int32_t k = 0; k < pQuery->numOfFilterCols; ++k) {
    SSingleColumnFilterInfo *pFilterInfo = &pQuery->pFilterInfo[k];
    char* pElem = pFilterInfo->pData + pFilterInfo->info.data.bytes * elemPos;

    if(isNull(pElem, pFilterInfo->info.data.type)) {
      return 0;
    }

    int32_t num = pFilterInfo->numOfFilters;
    bool qualified = 0;
    for(int32_t j = 0; j < num; ++j) {
      SColumnFilterElem* pFilterElem = &pFilterInfo->pFilters[j];
      if (pFilterElem->fp(pFilterElem, pElem, pElem)) {
        qualified = 1;
        break;
      }
    }

    if (!qualified) {
      return 0;
    }
  }

  return 1;
}
