
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_3__ {scalar_t__ numOfAlloc; int * pExprs; } ;
typedef TYPE_1__ SSqlExprInfo ;
typedef int SSqlExpr ;


 unsigned int TSDB_MAX_COLUMNS ;
 int memset (int *,int ,scalar_t__) ;
 int * realloc (int *,unsigned int) ;

__attribute__((used)) static void _exprCheckSpace(SSqlExprInfo* pExprInfo, int32_t size) {
  if (size > pExprInfo->numOfAlloc) {
    uint32_t oldSize = pExprInfo->numOfAlloc;

    uint32_t newSize = (oldSize <= 0) ? 8 : (oldSize << 1U);
    while (newSize < size) {
      newSize = (newSize << 1U);
    }

    if (newSize > TSDB_MAX_COLUMNS) {
      newSize = TSDB_MAX_COLUMNS;
    }

    int32_t inc = newSize - oldSize;

    pExprInfo->pExprs = realloc(pExprInfo->pExprs, newSize * sizeof(SSqlExpr));
    memset(&pExprInfo->pExprs[oldSize], 0, inc * sizeof(SSqlExpr));

    pExprInfo->numOfAlloc = newSize;
  }
}
