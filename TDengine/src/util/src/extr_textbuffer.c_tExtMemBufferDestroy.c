
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nAllocSize; TYPE_2__* pFlushoutInfo; } ;
struct TYPE_9__ {TYPE_1__ flushoutData; } ;
struct TYPE_8__ {scalar_t__ dataFile; int pColModel; int dataFilePath; struct TYPE_8__* pNext; struct TYPE_8__* pHead; TYPE_3__ fileMeta; } ;
typedef TYPE_2__ tFilePagesItem ;
typedef TYPE_3__ tFileMeta ;
typedef TYPE_2__ tExtMemBuffer ;
typedef scalar_t__ int32_t ;


 int errno ;
 scalar_t__ fclose (scalar_t__) ;
 int pError (char*,int ,int ) ;
 int strerror (int ) ;
 int tColModelDestroy (int ) ;
 int tfree (TYPE_2__*) ;
 int unlink (int ) ;

void tExtMemBufferDestroy(tExtMemBuffer **pMemBuffer) {
  if ((*pMemBuffer) == ((void*)0)) {
    return;
  }


  tFileMeta *pFileMeta = &(*pMemBuffer)->fileMeta;
  if (pFileMeta->flushoutData.nAllocSize != 0 && pFileMeta->flushoutData.pFlushoutInfo != ((void*)0)) {
    tfree(pFileMeta->flushoutData.pFlushoutInfo);
  }


  tFilePagesItem *pFilePages = (*pMemBuffer)->pHead;
  while (pFilePages != ((void*)0)) {
    tFilePagesItem *pTmp = pFilePages;
    pFilePages = pFilePages->pNext;
    tfree(pTmp);
  }


  if ((*pMemBuffer)->dataFile != 0) {
    int32_t ret = fclose((*pMemBuffer)->dataFile);
    if (ret != 0) {
      pError("failed to close file:%s, reason:%s", (*pMemBuffer)->dataFilePath, strerror(errno));
    }
    unlink((*pMemBuffer)->dataFilePath);
  }

  tColModelDestroy((*pMemBuffer)->pColModel);

  tfree(*pMemBuffer);
}
