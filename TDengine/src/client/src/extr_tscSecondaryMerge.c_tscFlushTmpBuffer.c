
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tOrderDescriptor ;
typedef int tFilePage ;
typedef int tExtMemBuffer ;
typedef scalar_t__ int32_t ;


 int tExtMemBufferFlush (int *) ;
 scalar_t__ tscFlushTmpBufferImpl (int *,int *,int *,scalar_t__) ;

int32_t tscFlushTmpBuffer(tExtMemBuffer *pMemoryBuf, tOrderDescriptor *pDesc, tFilePage *pPage, int32_t orderType) {
  int32_t ret = tscFlushTmpBufferImpl(pMemoryBuf, pDesc, pPage, orderType);
  if (ret != 0) {
    return -1;
  }

  if (!tExtMemBufferFlush(pMemoryBuf)) {
    return -1;
  }

  return 0;
}
