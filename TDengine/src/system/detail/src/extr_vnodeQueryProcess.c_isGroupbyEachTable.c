
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ numOfSids; scalar_t__ numOfSubSet; } ;
typedef TYPE_1__ tSidSet ;
typedef size_t int32_t ;
struct TYPE_8__ {scalar_t__ flag; } ;
struct TYPE_7__ {scalar_t__ numOfGroupCols; TYPE_3__* columnInfo; } ;
typedef TYPE_2__ SSqlGroupbyExpr ;
typedef TYPE_3__ SColIndexEx ;


 scalar_t__ TSDB_COL_TAG ;
 int assert (int) ;

__attribute__((used)) static bool isGroupbyEachTable(SSqlGroupbyExpr *pGroupbyExpr, tSidSet *pSidset) {
  if (pGroupbyExpr == ((void*)0) || pGroupbyExpr->numOfGroupCols == 0) {
    return 0;
  }

  for (int32_t i = 0; i < pGroupbyExpr->numOfGroupCols; ++i) {
    SColIndexEx *pColIndex = &pGroupbyExpr->columnInfo[i];
    if (pColIndex->flag == TSDB_COL_TAG) {
      assert(pSidset->numOfSids == pSidset->numOfSubSet);
      return 1;
    }
  }

  return 0;
}
