
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t (* xGetCurMaxSize ) (TYPE_1__*) ;int mux; } ;
typedef TYPE_1__ Ringbuffer_t ;
typedef scalar_t__ RingbufHandle_t ;


 int configASSERT (TYPE_1__*) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 size_t stub1 (TYPE_1__*) ;

size_t xRingbufferGetCurFreeSize(RingbufHandle_t xRingbuffer)
{
    Ringbuffer_t *pxRingbuffer = (Ringbuffer_t *)xRingbuffer;
    configASSERT(pxRingbuffer);

    size_t xFreeSize;
    portENTER_CRITICAL(&pxRingbuffer->mux);
    xFreeSize = pxRingbuffer->xGetCurMaxSize(pxRingbuffer);
    portEXIT_CRITICAL(&pxRingbuffer->mux);
    return xFreeSize;
}
