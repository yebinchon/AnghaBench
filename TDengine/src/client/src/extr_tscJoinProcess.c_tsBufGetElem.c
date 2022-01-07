
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {int tag; } ;
struct TYPE_12__ {scalar_t__ rawBuf; } ;
struct TYPE_14__ {size_t vnodeIndex; int tsIndex; } ;
struct TYPE_15__ {TYPE_3__ tsData; TYPE_2__* pData; TYPE_7__ block; TYPE_5__ cur; } ;
struct TYPE_13__ {int vnode; int tag; int ts; } ;
struct TYPE_10__ {int vnode; } ;
struct TYPE_11__ {TYPE_1__ info; } ;
typedef int TSKEY ;
typedef TYPE_4__ STSElem ;
typedef TYPE_5__ STSCursor ;
typedef TYPE_6__ STSBuf ;
typedef TYPE_7__ STSBlock ;


 int TSDB_KEYSIZE ;

STSElem tsBufGetElem(STSBuf* pTSBuf) {
  STSElem elem1 = {.vnode = -1};
  STSCursor* pCur = &pTSBuf->cur;

  if (pTSBuf == ((void*)0) || pCur->vnodeIndex < 0) {
    return elem1;
  }

  STSBlock* pBlock = &pTSBuf->block;

  elem1.vnode = pTSBuf->pData[pCur->vnodeIndex].info.vnode;
  elem1.ts = *(TSKEY*)(pTSBuf->tsData.rawBuf + pCur->tsIndex * TSDB_KEYSIZE);
  elem1.tag = pBlock->tag;

  return elem1;
}
