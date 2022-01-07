
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_14__ {int numOfElem; } ;
struct TYPE_13__ {int len; } ;
struct TYPE_18__ {int vnodeIndex; scalar_t__ order; int tsIndex; int blockIndex; } ;
struct TYPE_19__ {int numOfVnodes; TYPE_4__* pData; TYPE_2__ block; TYPE_1__ tsData; TYPE_6__ cur; } ;
struct TYPE_17__ {int numOfBlocks; } ;
struct TYPE_15__ {int vnode; } ;
struct TYPE_16__ {TYPE_3__ info; } ;
typedef TYPE_5__ STSVnodeBlockInfo ;
typedef TYPE_6__ STSCursor ;
typedef TYPE_7__ STSBuf ;


 int TSDB_KEYSIZE ;
 scalar_t__ TSQL_SO_ASC ;
 scalar_t__ TSQL_SO_DESC ;
 int assert (int) ;
 int tsBufGetBlock (TYPE_7__*,int,int) ;
 TYPE_5__* tsBufGetVnodeBlockInfo (TYPE_7__*,int) ;
 int tsBufResetPos (TYPE_7__*) ;

bool tsBufNextPos(STSBuf* pTSBuf) {
  if (pTSBuf == ((void*)0) || pTSBuf->numOfVnodes == 0) {
    return 0;
  }

  STSCursor* pCur = &pTSBuf->cur;


  if (pCur->vnodeIndex == -1) {
    if (pCur->order == TSQL_SO_ASC) {
      tsBufGetBlock(pTSBuf, 0, 0);

      if (pTSBuf->block.numOfElem == 0) {
        tsBufResetPos(pTSBuf);
        return 0;
      } else {
        return 1;
      }
    } else {
      int32_t vnodeIndex = pTSBuf->numOfVnodes - 1;

      int32_t vnodeId = pTSBuf->pData[pCur->vnodeIndex].info.vnode;
      STSVnodeBlockInfo* pBlockInfo = tsBufGetVnodeBlockInfo(pTSBuf, vnodeId);
      int32_t blockIndex = pBlockInfo->numOfBlocks - 1;

      tsBufGetBlock(pTSBuf, vnodeIndex, blockIndex);

      pCur->tsIndex = pTSBuf->block.numOfElem - 1;
      if (pTSBuf->block.numOfElem == 0) {
        tsBufResetPos(pTSBuf);
        return 0;
      } else {
        return 1;
      }
    }
  }

  int32_t step = pCur->order == TSQL_SO_ASC ? 1 : -1;

  while (1) {
    assert(pTSBuf->tsData.len == pTSBuf->block.numOfElem * TSDB_KEYSIZE);

    if ((pCur->order == TSQL_SO_ASC && pCur->tsIndex >= pTSBuf->block.numOfElem - 1) ||
        (pCur->order == TSQL_SO_DESC && pCur->tsIndex <= 0)) {
      int32_t vnodeId = pTSBuf->pData[pCur->vnodeIndex].info.vnode;

      STSVnodeBlockInfo* pBlockInfo = tsBufGetVnodeBlockInfo(pTSBuf, vnodeId);
      if (pBlockInfo == ((void*)0) || (pCur->blockIndex >= pBlockInfo->numOfBlocks - 1 && pCur->order == TSQL_SO_ASC) ||
          (pCur->blockIndex <= 0 && pCur->order == TSQL_SO_DESC)) {
        if ((pCur->vnodeIndex >= pTSBuf->numOfVnodes - 1 && pCur->order == TSQL_SO_ASC) ||
            (pCur->vnodeIndex <= 0 && pCur->order == TSQL_SO_DESC)) {
          pCur->vnodeIndex = -1;
          return 0;
        }

        int32_t blockIndex = pCur->order == TSQL_SO_ASC ? 0 : pBlockInfo->numOfBlocks - 1;
        tsBufGetBlock(pTSBuf, pCur->vnodeIndex + step, blockIndex);
        break;

      } else {
        tsBufGetBlock(pTSBuf, pCur->vnodeIndex, pCur->blockIndex + step);
        break;
      }
    } else {
      pCur->tsIndex += step;
      break;
    }
  }

  return 1;
}
