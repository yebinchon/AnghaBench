
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int uxRingbufferFlags; int pucRead; int pucFree; int * pucTail; int * pucHead; } ;
typedef TYPE_1__ Ringbuffer_t ;


 int configASSERT (int) ;
 int rbBUFFER_FULL_FLAG ;

__attribute__((used)) static void prvReturnItemByteBuf(Ringbuffer_t *pxRingbuffer, uint8_t *pucItem)
{

    configASSERT((uint8_t *)pucItem >= pxRingbuffer->pucHead);
    configASSERT((uint8_t *)pucItem < pxRingbuffer->pucTail);

    pxRingbuffer->pucFree = pxRingbuffer->pucRead;

    if (pxRingbuffer->uxRingbufferFlags & rbBUFFER_FULL_FLAG) {
        pxRingbuffer->uxRingbufferFlags &= ~rbBUFFER_FULL_FLAG;
    }
}
