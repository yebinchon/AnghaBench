
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int64_t ;
typedef int int32_t ;
struct TYPE_14__ {int info; } ;
struct TYPE_12__ {int vnodeIndex; int blockIndex; } ;
struct TYPE_13__ {TYPE_9__* pData; TYPE_2__ cur; int numOfVnodes; } ;
struct TYPE_11__ {int vnode; } ;
typedef int STSVnodeBlockInfo ;
typedef TYPE_1__ STSElem ;
typedef TYPE_2__ STSCursor ;
typedef TYPE_3__ STSBuf ;


 int tsBufFindBlockByTag (TYPE_3__*,int *,int ) ;
 int tsBufFindVnodeIndexFromId (TYPE_9__*,int ,int) ;
 int tsBufGetBlock (TYPE_3__*,int,int) ;
 TYPE_1__ tsBufGetElem (TYPE_3__*) ;

STSElem tsBufGetElemStartPos(STSBuf* pTSBuf, int32_t vnodeId, int64_t tag) {
  STSElem elem = {.vnode = -1};

  if (pTSBuf == ((void*)0)) {
    return elem;
  }

  int32_t j = tsBufFindVnodeIndexFromId(pTSBuf->pData, pTSBuf->numOfVnodes, vnodeId);
  if (j == -1) {
    return elem;
  }




  STSCursor* pCur = &pTSBuf->cur;
  STSVnodeBlockInfo* pBlockInfo = &pTSBuf->pData[j].info;

  int32_t blockIndex = tsBufFindBlockByTag(pTSBuf, pBlockInfo, tag);
  if (blockIndex < 0) {
    return elem;
  }

  pCur->vnodeIndex = j;
  pCur->blockIndex = blockIndex;
  tsBufGetBlock(pTSBuf, j, blockIndex);

  return tsBufGetElem(pTSBuf);
}
