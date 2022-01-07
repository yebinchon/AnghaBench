
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ xItemsWaiting; int uxRingbufferFlags; int * pucRead; int * pucWrite; int * pucHead; int * pucTail; int * pucFree; } ;
typedef TYPE_1__ Ringbuffer_t ;
typedef int BaseType_t ;


 int configASSERT (int) ;
 int rbBUFFER_FULL_FLAG ;

__attribute__((used)) static void *prvGetItemByteBuf(Ringbuffer_t *pxRingbuffer,
                               BaseType_t *pxUnusedParam,
                               size_t xMaxSize,
                               size_t *pxItemSize)
{

    configASSERT((pxRingbuffer->xItemsWaiting > 0) && ((pxRingbuffer->pucRead != pxRingbuffer->pucWrite) || (pxRingbuffer->uxRingbufferFlags & rbBUFFER_FULL_FLAG)));
    configASSERT(pxRingbuffer->pucRead >= pxRingbuffer->pucHead && pxRingbuffer->pucRead < pxRingbuffer->pucTail);
    configASSERT(pxRingbuffer->pucRead == pxRingbuffer->pucFree);

    uint8_t *ret = pxRingbuffer->pucRead;
    if ((pxRingbuffer->pucRead > pxRingbuffer->pucWrite) || (pxRingbuffer->uxRingbufferFlags & rbBUFFER_FULL_FLAG)) {

        if (xMaxSize == 0 || pxRingbuffer->pucTail - pxRingbuffer->pucRead <= xMaxSize) {

            *pxItemSize = pxRingbuffer->pucTail - pxRingbuffer->pucRead;
            pxRingbuffer->xItemsWaiting -= pxRingbuffer->pucTail - pxRingbuffer->pucRead;
            pxRingbuffer->pucRead = pxRingbuffer->pucHead;
        } else {

            *pxItemSize = xMaxSize;
            pxRingbuffer->xItemsWaiting -= xMaxSize;
            pxRingbuffer->pucRead += xMaxSize;
        }
    } else {
        if (xMaxSize == 0 || pxRingbuffer->pucWrite - pxRingbuffer->pucRead <= xMaxSize) {

            *pxItemSize = pxRingbuffer->pucWrite - pxRingbuffer->pucRead;
            pxRingbuffer->xItemsWaiting -= pxRingbuffer->pucWrite - pxRingbuffer->pucRead;
            pxRingbuffer->pucRead = pxRingbuffer->pucWrite;
        } else {

            *pxItemSize = xMaxSize;
            pxRingbuffer->xItemsWaiting -= xMaxSize;
            pxRingbuffer->pucRead += xMaxSize;

        }
    }
    return (void *)ret;
}
