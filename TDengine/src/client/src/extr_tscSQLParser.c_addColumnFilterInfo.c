
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int numOfFilters; int * filterInfo; } ;
typedef int SColumnFilterInfo ;
typedef TYPE_1__ SColumnBase ;


 int memset (int *,int ,int) ;
 char* realloc (int *,int) ;

__attribute__((used)) static SColumnFilterInfo* addColumnFilterInfo(SColumnBase* pColumn) {
  if (pColumn == ((void*)0)) {
    return ((void*)0);
  }

  int32_t size = pColumn->numOfFilters + 1;
  char* tmp = realloc(pColumn->filterInfo, sizeof(SColumnFilterInfo) * (size));
  if (tmp != ((void*)0)) {
    pColumn->filterInfo = (SColumnFilterInfo*)tmp;
  }

  pColumn->numOfFilters++;

  SColumnFilterInfo* pColFilterInfo = &pColumn->filterInfo[pColumn->numOfFilters - 1];
  memset(pColFilterInfo, 0, sizeof(SColumnFilterInfo));

  return pColFilterInfo;
}
