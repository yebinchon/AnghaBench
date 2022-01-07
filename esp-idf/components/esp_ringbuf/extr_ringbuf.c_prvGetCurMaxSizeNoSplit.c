
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uxRingbufferFlags; scalar_t__ pucAcquire; scalar_t__ pucFree; size_t pucTail; size_t pucHead; scalar_t__ xMaxItemSize; } ;
typedef TYPE_1__ Ringbuffer_t ;
typedef scalar_t__ BaseType_t ;


 int rbBUFFER_FULL_FLAG ;
 scalar_t__ rbHEADER_SIZE ;

__attribute__((used)) static size_t prvGetCurMaxSizeNoSplit(Ringbuffer_t *pxRingbuffer)
{
    BaseType_t xFreeSize;

    if (pxRingbuffer->uxRingbufferFlags & rbBUFFER_FULL_FLAG) {
        return 0;
    }
    if (pxRingbuffer->pucAcquire < pxRingbuffer->pucFree) {

        xFreeSize = pxRingbuffer->pucFree - pxRingbuffer->pucAcquire;
    } else {


        size_t xSize1 = pxRingbuffer->pucTail - pxRingbuffer->pucAcquire;
        size_t xSize2 = pxRingbuffer->pucFree - pxRingbuffer->pucHead;
        xFreeSize = (xSize1 > xSize2) ? xSize1 : xSize2;
    }


    xFreeSize -= rbHEADER_SIZE;

    if (xFreeSize > pxRingbuffer->xMaxItemSize) {
        xFreeSize = pxRingbuffer->xMaxItemSize;
    } else if (xFreeSize < 0) {

        xFreeSize = 0;
    }
    return xFreeSize;
}
