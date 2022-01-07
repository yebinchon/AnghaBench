
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_13__ {scalar_t__ numOfElems; } ;
struct TYPE_17__ {scalar_t__ rowIdx; TYPE_1__ filePage; } ;
struct TYPE_16__ {scalar_t__ numOfBuffer; } ;
struct TYPE_15__ {TYPE_2__* pNode; } ;
struct TYPE_14__ {scalar_t__ index; } ;
typedef TYPE_3__ SLoserTreeInfo ;
typedef TYPE_4__ SLocalReducer ;
typedef TYPE_5__ SLocalDataSource ;


 int loadNewDataFromDiskFor (TYPE_4__*,TYPE_5__*,int*) ;
 int printf (char*) ;
 int tLoserTreeAdjust (TYPE_3__*,scalar_t__) ;
 int tLoserTreeDisplay (TYPE_3__*) ;

void adjustLoserTreeFromNewData(SLocalReducer *pLocalReducer, SLocalDataSource *pOneInterDataSrc,
                                SLoserTreeInfo *pTree) {




  bool needToAdjust = 1;
  if (pOneInterDataSrc->filePage.numOfElems <= pOneInterDataSrc->rowIdx) {
    loadNewDataFromDiskFor(pLocalReducer, pOneInterDataSrc, &needToAdjust);
  }





  if (needToAdjust) {
    int32_t leafNodeIdx = pTree->pNode[0].index + pLocalReducer->numOfBuffer;






    tLoserTreeAdjust(pTree, leafNodeIdx);






  }
}
