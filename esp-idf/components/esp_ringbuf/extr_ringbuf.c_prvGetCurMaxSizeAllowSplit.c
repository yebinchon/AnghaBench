
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uxRingbufferFlags; scalar_t__ pucAcquire; scalar_t__ pucHead; scalar_t__ pucFree; scalar_t__ xSize; scalar_t__ pucTail; scalar_t__ xMaxItemSize; } ;
typedef TYPE_1__ Ringbuffer_t ;
typedef scalar_t__ BaseType_t ;


 int rbBUFFER_FULL_FLAG ;
 int rbHEADER_SIZE ;

__attribute__((used)) static size_t prvGetCurMaxSizeAllowSplit(Ringbuffer_t *pxRingbuffer)
{
    BaseType_t xFreeSize;

    if (pxRingbuffer->uxRingbufferFlags & rbBUFFER_FULL_FLAG) {
        return 0;
    }
    if (pxRingbuffer->pucAcquire == pxRingbuffer->pucHead && pxRingbuffer->pucFree == pxRingbuffer->pucHead) {

        xFreeSize = pxRingbuffer->xSize - rbHEADER_SIZE;
    } else if (pxRingbuffer->pucAcquire < pxRingbuffer->pucFree) {

        xFreeSize = (pxRingbuffer->pucFree - pxRingbuffer->pucAcquire) - rbHEADER_SIZE;
    } else {

        xFreeSize = (pxRingbuffer->pucFree - pxRingbuffer->pucHead) +
                    (pxRingbuffer->pucTail - pxRingbuffer->pucAcquire) -
                    (rbHEADER_SIZE * 2);
    }


    if (xFreeSize > pxRingbuffer->xMaxItemSize) {
        xFreeSize = pxRingbuffer->xMaxItemSize;
    } else if (xFreeSize < 0) {
        xFreeSize = 0;
    }
    return xFreeSize;
}
