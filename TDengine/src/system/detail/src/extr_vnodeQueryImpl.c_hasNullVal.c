
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_15__ {scalar_t__ numOfNullPoints; } ;
struct TYPE_14__ {TYPE_3__* pSelectExpr; } ;
struct TYPE_11__ {int flag; } ;
struct TYPE_12__ {TYPE_1__ colInfo; } ;
struct TYPE_13__ {TYPE_2__ pBase; } ;
typedef TYPE_4__ SQuery ;
typedef TYPE_5__ SField ;
typedef int SBlockInfo ;


 scalar_t__ TSDB_COL_IS_TAG (int ) ;
 TYPE_5__* getFieldInfo (TYPE_4__*,int *,TYPE_5__*,size_t) ;

__attribute__((used)) static bool hasNullVal(SQuery *pQuery, int32_t col, SBlockInfo *pBlockInfo, SField *pFields, bool isDiskFileBlock) {
  bool ret = 1;

  if (TSDB_COL_IS_TAG(pQuery->pSelectExpr[col].pBase.colInfo.flag)) {
    ret = 0;
  } else if (isDiskFileBlock) {
    if (pFields == ((void*)0)) {
      ret = 0;
    } else {
      SField *pField = getFieldInfo(pQuery, pBlockInfo, pFields, col);
      if (pField != ((void*)0) && pField->numOfNullPoints == 0) {
        ret = 0;
      }
    }
  }

  return ret;
}
