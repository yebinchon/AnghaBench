
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tFlushoutInfo ;
struct TYPE_5__ {int nAllocSize; int pFlushoutInfo; scalar_t__ nLength; } ;
struct TYPE_6__ {TYPE_1__ flushoutData; } ;
typedef TYPE_2__ tFileMeta ;
struct TYPE_7__ {TYPE_2__ fileMeta; } ;
typedef TYPE_3__ tExtMemBuffer ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void tExtMemBufferClearFlushoutInfo(tExtMemBuffer *pMemBuffer) {
  tFileMeta *pFileMeta = &pMemBuffer->fileMeta;

  pFileMeta->flushoutData.nLength = 0;
  memset(pFileMeta->flushoutData.pFlushoutInfo, 0, sizeof(tFlushoutInfo) * pFileMeta->flushoutData.nAllocSize);
}
