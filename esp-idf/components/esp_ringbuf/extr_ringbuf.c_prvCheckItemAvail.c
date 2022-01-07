
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uxRingbufferFlags; scalar_t__ pucRead; scalar_t__ pucFree; scalar_t__ xItemsWaiting; scalar_t__ pucWrite; } ;
typedef TYPE_1__ Ringbuffer_t ;
typedef int BaseType_t ;


 int pdFALSE ;
 int pdTRUE ;
 int rbBUFFER_FULL_FLAG ;
 int rbBYTE_BUFFER_FLAG ;

__attribute__((used)) static BaseType_t prvCheckItemAvail(Ringbuffer_t *pxRingbuffer)
{
    if ((pxRingbuffer->uxRingbufferFlags & rbBYTE_BUFFER_FLAG) && pxRingbuffer->pucRead != pxRingbuffer->pucFree) {
        return pdFALSE;
    }
    if ((pxRingbuffer->xItemsWaiting > 0) && ((pxRingbuffer->pucRead != pxRingbuffer->pucWrite) || (pxRingbuffer->uxRingbufferFlags & rbBUFFER_FULL_FLAG))) {
        return pdTRUE;
    } else {
        return pdFALSE;
    }
}
