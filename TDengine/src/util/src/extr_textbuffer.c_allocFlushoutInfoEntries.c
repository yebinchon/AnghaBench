
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tFlushoutInfo ;
struct TYPE_4__ {int nAllocSize; int * pFlushoutInfo; } ;
struct TYPE_5__ {TYPE_1__ flushoutData; } ;
typedef TYPE_2__ tFileMeta ;


 int pError (char*) ;
 scalar_t__ realloc (int *,int) ;

__attribute__((used)) static bool allocFlushoutInfoEntries(tFileMeta *pFileMeta) {
  pFileMeta->flushoutData.nAllocSize = pFileMeta->flushoutData.nAllocSize << 1;

  tFlushoutInfo *tmp = (tFlushoutInfo *)realloc(pFileMeta->flushoutData.pFlushoutInfo,
                                                sizeof(tFlushoutInfo) * pFileMeta->flushoutData.nAllocSize);
  if (tmp == ((void*)0)) {
    pError("out of memory!\n");
    return 0;
  }

  pFileMeta->flushoutData.pFlushoutInfo = tmp;
  return 1;
}
