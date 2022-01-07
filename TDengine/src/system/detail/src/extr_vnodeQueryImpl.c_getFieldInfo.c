
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_16__ {size_t numOfCols; } ;
struct TYPE_15__ {scalar_t__ colId; int flag; } ;
struct TYPE_14__ {scalar_t__ colId; } ;
struct TYPE_13__ {size_t numOfOutputCols; TYPE_2__* pSelectExpr; } ;
struct TYPE_11__ {TYPE_5__ colInfo; } ;
struct TYPE_12__ {TYPE_1__ pBase; } ;
typedef TYPE_3__ SQuery ;
typedef TYPE_4__ SField ;
typedef TYPE_5__ SColIndexEx ;
typedef TYPE_6__ SBlockInfo ;


 scalar_t__ TSDB_COL_IS_TAG (int ) ;

__attribute__((used)) static SField *getFieldInfo(SQuery *pQuery, SBlockInfo *pBlockInfo, SField *pFields, int32_t column) {

  if (pFields == ((void*)0) || column >= pQuery->numOfOutputCols) {
    return ((void*)0);
  }

  SColIndexEx *pColIndexEx = &pQuery->pSelectExpr[column].pBase.colInfo;


  if (TSDB_COL_IS_TAG(pColIndexEx->flag)) {
    return ((void*)0);
  }





  for (int32_t i = 0; i < pBlockInfo->numOfCols; ++i) {
    if (pColIndexEx->colId == pFields[i].colId) {
      return &pFields[i];
    }
  }

  return ((void*)0);
}
