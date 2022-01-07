
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_11__ {scalar_t__ columnIndex; scalar_t__ tableIndex; } ;
struct TYPE_13__ {TYPE_2__ colIndex; } ;
struct TYPE_12__ {size_t numOfCols; TYPE_4__* pColList; } ;
struct TYPE_10__ {int numOfCols; TYPE_3__ colList; } ;
typedef TYPE_1__ SSqlCmd ;
typedef TYPE_2__ SColumnIndex ;
typedef TYPE_3__ SColumnBaseInfo ;
typedef TYPE_4__ SColumnBase ;


 int _cf_ensureSpace (TYPE_3__*,int) ;
 int _cf_evic (TYPE_3__*,size_t) ;

SColumnBase* tscColumnBaseInfoInsert(SSqlCmd* pCmd, SColumnIndex* pColIndex) {
  SColumnBaseInfo* pcolList = &pCmd->colList;


  if (pColIndex->columnIndex < 0) {
    return ((void*)0);
  }

  int16_t col = pColIndex->columnIndex;

  int32_t i = 0;
  while (i < pcolList->numOfCols) {
    if (pcolList->pColList[i].colIndex.columnIndex < col) {
      i++;
    } else if (pcolList->pColList[i].colIndex.tableIndex < pColIndex->tableIndex) {
      i++;
    } else {
      break;
    }
  }

  SColumnIndex* pIndex = &pcolList->pColList[i].colIndex;
  if ((i < pcolList->numOfCols && (pIndex->columnIndex > col || pIndex->tableIndex != pColIndex->tableIndex)) ||
      (i >= pcolList->numOfCols)) {
    _cf_ensureSpace(pcolList, pcolList->numOfCols + 1);
    _cf_evic(pcolList, i);

    pcolList->pColList[i].colIndex = *pColIndex;
    pcolList->numOfCols++;
    pCmd->numOfCols++;
  }

  return &pcolList->pColList[i];
}
