
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
 int rbBUFFER_FULL_FLAG ;

__attribute__((used)) static BaseType_t prvCheckItemFitsByteBuffer( Ringbuffer_t *pxRingbuffer, size_t xItemSize)
{

    configASSERT(pxRingbuffer->pucAcquire >= pxRingbuffer->pucHead && pxRingbuffer->pucAcquire < pxRingbuffer->pucTail);

    if (pxRingbuffer->pucAcquire == pxRingbuffer->pucFree) {

        return (pxRingbuffer->uxRingbufferFlags & rbBUFFER_FULL_FLAG) ? pdFALSE : pdTRUE;
    }
    if (pxRingbuffer->pucFree > pxRingbuffer->pucAcquire) {

        return (xItemSize <= pxRingbuffer->pucFree - pxRingbuffer->pucAcquire) ? pdTRUE : pdFALSE;
    }

    return (xItemSize <= pxRingbuffer->xSize - (pxRingbuffer->pucAcquire - pxRingbuffer->pucFree)) ? pdTRUE : pdFALSE;
}
