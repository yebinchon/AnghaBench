
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pucAcquire; scalar_t__ pucHead; scalar_t__ pucTail; scalar_t__ pucFree; int uxRingbufferFlags; size_t xSize; } ;
typedef TYPE_1__ Ringbuffer_t ;
typedef int BaseType_t ;


 int configASSERT (int) ;
 int pdFALSE ;
 int pdTRUE ;
 size_t rbALIGN_SIZE (size_t) ;
 int rbALLOW_SPLIT_FLAG ;
 int rbBUFFER_FULL_FLAG ;
 int rbCHECK_ALIGNED (scalar_t__) ;
 size_t rbHEADER_SIZE ;

__attribute__((used)) static BaseType_t prvCheckItemFitsDefault( Ringbuffer_t *pxRingbuffer, size_t xItemSize)
{

    configASSERT(rbCHECK_ALIGNED(pxRingbuffer->pucAcquire));
    configASSERT(pxRingbuffer->pucAcquire >= pxRingbuffer->pucHead && pxRingbuffer->pucAcquire < pxRingbuffer->pucTail);

    size_t xTotalItemSize = rbALIGN_SIZE(xItemSize) + rbHEADER_SIZE;
    if (pxRingbuffer->pucAcquire == pxRingbuffer->pucFree) {

        return (pxRingbuffer->uxRingbufferFlags & rbBUFFER_FULL_FLAG) ? pdFALSE : pdTRUE;
    }
    if (pxRingbuffer->pucFree > pxRingbuffer->pucAcquire) {

        return (xTotalItemSize <= pxRingbuffer->pucFree - pxRingbuffer->pucAcquire) ? pdTRUE : pdFALSE;
    }

    if (xTotalItemSize <= pxRingbuffer->pucTail - pxRingbuffer->pucAcquire) {
        return pdTRUE;
    }

    if (pxRingbuffer->uxRingbufferFlags & rbALLOW_SPLIT_FLAG) {

        return (xTotalItemSize + rbHEADER_SIZE <= pxRingbuffer->xSize - (pxRingbuffer->pucAcquire - pxRingbuffer->pucFree)) ? pdTRUE : pdFALSE;
    } else {
        return (xTotalItemSize <= pxRingbuffer->pucFree - pxRingbuffer->pucHead) ? pdTRUE : pdFALSE;
    }
}
