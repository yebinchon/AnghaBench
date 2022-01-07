
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ pucAcquire; scalar_t__ pucHead; scalar_t__ pucTail; size_t xItemsWaiting; scalar_t__ pucFree; scalar_t__ pucWrite; int uxRingbufferFlags; } ;
typedef TYPE_1__ Ringbuffer_t ;


 int configASSERT (int) ;
 int memcpy (size_t,int const*,size_t) ;
 int rbBUFFER_FULL_FLAG ;

__attribute__((used)) static void prvCopyItemByteBuf(Ringbuffer_t *pxRingbuffer, const uint8_t *pucItem, size_t xItemSize)
{

    configASSERT(pxRingbuffer->pucAcquire >= pxRingbuffer->pucHead && pxRingbuffer->pucAcquire < pxRingbuffer->pucTail);

    size_t xRemLen = pxRingbuffer->pucTail - pxRingbuffer->pucAcquire;
    if (xRemLen < xItemSize) {

        memcpy(pxRingbuffer->pucAcquire, pucItem, xRemLen);
        pxRingbuffer->xItemsWaiting += xRemLen;

        pucItem += xRemLen;
        xItemSize -= xRemLen;
        pxRingbuffer->pucAcquire = pxRingbuffer->pucHead;
    }

    memcpy(pxRingbuffer->pucAcquire, pucItem, xItemSize);
    pxRingbuffer->xItemsWaiting += xItemSize;
    pxRingbuffer->pucAcquire += xItemSize;


    if (pxRingbuffer->pucAcquire == pxRingbuffer->pucTail) {
        pxRingbuffer->pucAcquire = pxRingbuffer->pucHead;
    }

    if (pxRingbuffer->pucAcquire == pxRingbuffer->pucFree) {
        pxRingbuffer->uxRingbufferFlags |= rbBUFFER_FULL_FLAG;
    }


    pxRingbuffer->pucWrite = pxRingbuffer->pucAcquire;
}
