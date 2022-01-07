
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uxRingbufferFlags; scalar_t__ pucFree; scalar_t__ pucAcquire; scalar_t__ xSize; } ;
typedef TYPE_1__ Ringbuffer_t ;
typedef scalar_t__ BaseType_t ;


 int rbBUFFER_FULL_FLAG ;

__attribute__((used)) static size_t prvGetCurMaxSizeByteBuf(Ringbuffer_t *pxRingbuffer)
{
    BaseType_t xFreeSize;

    if (pxRingbuffer->uxRingbufferFlags & rbBUFFER_FULL_FLAG) {
        return 0;
    }





    xFreeSize = pxRingbuffer->pucFree - pxRingbuffer->pucAcquire;
    if (xFreeSize <= 0) {
        xFreeSize += pxRingbuffer->xSize;
    }
    return xFreeSize;
}
