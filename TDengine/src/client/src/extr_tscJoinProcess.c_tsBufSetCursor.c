
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int vnodeIndex; int blockIndex; } ;
struct TYPE_7__ {TYPE_1__ cur; } ;
typedef TYPE_1__ STSCursor ;
typedef TYPE_2__ STSBuf ;


 int tsBufGetBlock (TYPE_2__*,int,int ) ;

void tsBufSetCursor(STSBuf* pTSBuf, STSCursor* pCur) {
  if (pTSBuf == ((void*)0) || pCur == ((void*)0)) {
    return;
  }


  if (pCur->vnodeIndex != -1) {
    tsBufGetBlock(pTSBuf, pCur->vnodeIndex, pCur->blockIndex);
  }

  pTSBuf->cur = *pCur;
}
