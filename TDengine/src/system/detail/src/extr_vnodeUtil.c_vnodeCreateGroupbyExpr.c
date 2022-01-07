
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {int numOfGroupCols; int orderByIdx; int orderType; scalar_t__ groupbyTagIds; } ;
struct TYPE_5__ {int numOfGroupCols; int columnInfo; int orderIndex; int orderType; } ;
typedef TYPE_1__ SSqlGroupbyExpr ;
typedef TYPE_2__ SQueryMeterMsg ;
typedef int SColIndexEx ;


 int TSDB_CODE_SERV_OUT_OF_MEMORY ;
 scalar_t__ malloc (int) ;
 int memcpy (int ,int *,int) ;

SSqlGroupbyExpr* vnodeCreateGroupbyExpr(SQueryMeterMsg* pQueryMsg, int32_t* code) {
  if (pQueryMsg->numOfGroupCols == 0) {
    return ((void*)0);
  }


  SSqlGroupbyExpr* pGroupbyExpr =
      (SSqlGroupbyExpr*)malloc(sizeof(SSqlGroupbyExpr) + pQueryMsg->numOfGroupCols * sizeof(SColIndexEx));
  if (pGroupbyExpr == ((void*)0)) {
    *code = TSDB_CODE_SERV_OUT_OF_MEMORY;
    return ((void*)0);
  }

  SColIndexEx* pGroupbyColInfo = (SColIndexEx*)pQueryMsg->groupbyTagIds;

  pGroupbyExpr->numOfGroupCols = pQueryMsg->numOfGroupCols;
  pGroupbyExpr->orderType = pQueryMsg->orderType;
  pGroupbyExpr->orderIndex = pQueryMsg->orderByIdx;

  memcpy(pGroupbyExpr->columnInfo, pGroupbyColInfo, sizeof(SColIndexEx) * pGroupbyExpr->numOfGroupCols);



  return pGroupbyExpr;
}
