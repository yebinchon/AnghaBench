
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* pNext; } ;
typedef TYPE_2__ tFilePagesItem ;
struct TYPE_7__ {scalar_t__ nFileSize; scalar_t__ numOfElemsInFile; } ;
struct TYPE_9__ {scalar_t__ numOfAllElems; int * dataFile; int * pTail; TYPE_2__* pHead; scalar_t__ numOfPagesInMem; scalar_t__ numOfElemsInBuffer; TYPE_1__ fileMeta; } ;
typedef TYPE_3__ tExtMemBuffer ;


 int SEEK_SET ;
 int fseek (int *,int ,int ) ;
 int tExtMemBufferClearFlushoutInfo (TYPE_3__*) ;
 int tfree (TYPE_2__*) ;

void tExtMemBufferClear(tExtMemBuffer *pMemBuffer) {
  if (pMemBuffer == ((void*)0) || pMemBuffer->numOfAllElems == 0) return;




  tFilePagesItem *first = pMemBuffer->pHead;
  while (first != ((void*)0)) {
    tFilePagesItem *ptmp = first;
    first = first->pNext;
    tfree(ptmp);
  }

  pMemBuffer->fileMeta.numOfElemsInFile = 0;
  pMemBuffer->fileMeta.nFileSize = 0;

  pMemBuffer->numOfElemsInBuffer = 0;
  pMemBuffer->numOfPagesInMem = 0;
  pMemBuffer->pHead = ((void*)0);
  pMemBuffer->pTail = ((void*)0);

  tExtMemBufferClearFlushoutInfo(pMemBuffer);

  if (pMemBuffer->dataFile != ((void*)0)) {

    fseek(pMemBuffer->dataFile, 0, SEEK_SET);
  }
}
