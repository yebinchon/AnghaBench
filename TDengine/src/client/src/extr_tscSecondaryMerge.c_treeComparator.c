
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tOrderDescriptor ;
typedef size_t int32_t ;
struct TYPE_6__ {scalar_t__ groupOrderType; int numOfElems; TYPE_2__** pLocalData; int * pDesc; } ;
struct TYPE_4__ {int data; } ;
struct TYPE_5__ {int rowIdx; TYPE_1__ filePage; } ;
typedef TYPE_2__ SLocalDataSource ;
typedef TYPE_3__ SCompareParam ;


 scalar_t__ TSQL_SO_DESC ;
 size_t compare_a (int *,int ,int,int ,int ,int,int ) ;
 size_t compare_d (int *,int ,int,int ,int ,int,int ) ;

int32_t treeComparator(const void *pLeft, const void *pRight, void *param) {
  int32_t pLeftIdx = *(int32_t *)pLeft;
  int32_t pRightIdx = *(int32_t *)pRight;

  SCompareParam * pParam = (SCompareParam *)param;
  tOrderDescriptor * pDesc = pParam->pDesc;
  SLocalDataSource **pLocalData = pParam->pLocalData;


  if (pLocalData[pLeftIdx]->rowIdx == -1) {
    return 1;
  }

  if (pLocalData[pRightIdx]->rowIdx == -1) {
    return -1;
  }

  if (pParam->groupOrderType == TSQL_SO_DESC) {
    return compare_d(pDesc, pParam->numOfElems, pLocalData[pLeftIdx]->rowIdx, pLocalData[pLeftIdx]->filePage.data,
                     pParam->numOfElems, pLocalData[pRightIdx]->rowIdx, pLocalData[pRightIdx]->filePage.data);
  } else {
    return compare_a(pDesc, pParam->numOfElems, pLocalData[pLeftIdx]->rowIdx, pLocalData[pLeftIdx]->filePage.data,
                     pParam->numOfElems, pLocalData[pRightIdx]->rowIdx, pLocalData[pRightIdx]->filePage.data);
  }
}
