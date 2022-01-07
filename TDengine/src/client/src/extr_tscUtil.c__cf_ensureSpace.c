
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_3__ {scalar_t__ numOfAlloc; int * pColList; } ;
typedef TYPE_1__ SColumnBaseInfo ;
typedef int SColumnBase ;


 scalar_t__ TSDB_MAX_COLUMNS ;
 int memset (int *,int ,scalar_t__) ;
 int * realloc (int *,scalar_t__) ;

__attribute__((used)) static void _cf_ensureSpace(SColumnBaseInfo* pcolList, int32_t size) {
  if (pcolList->numOfAlloc < size) {
    int32_t oldSize = pcolList->numOfAlloc;

    int32_t newSize = (oldSize <= 0) ? 8 : (oldSize << 1);
    while (newSize < size) {
      newSize = (newSize << 1);
    }

    if (newSize > TSDB_MAX_COLUMNS) {
      newSize = TSDB_MAX_COLUMNS;
    }

    int32_t inc = newSize - oldSize;

    pcolList->pColList = realloc(pcolList->pColList, newSize * sizeof(SColumnBase));
    memset(&pcolList->pColList[oldSize], 0, inc * sizeof(SColumnBase));

    pcolList->numOfAlloc = newSize;
  }
}
