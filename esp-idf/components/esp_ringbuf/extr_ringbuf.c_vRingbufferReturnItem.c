
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int mux; int (* vReturnItem ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ Ringbuffer_t ;
typedef scalar_t__ RingbufHandle_t ;


 int configASSERT (TYPE_1__*) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rbGET_TX_SEM_HANDLE (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int *) ;
 int xSemaphoreGive (int ) ;

void vRingbufferReturnItem(RingbufHandle_t xRingbuffer, void *pvItem)
{
    Ringbuffer_t *pxRingbuffer = (Ringbuffer_t *)xRingbuffer;
    configASSERT(pxRingbuffer);
    configASSERT(pvItem != ((void*)0));

    portENTER_CRITICAL(&pxRingbuffer->mux);
    pxRingbuffer->vReturnItem(pxRingbuffer, (uint8_t *)pvItem);
    portEXIT_CRITICAL(&pxRingbuffer->mux);
    xSemaphoreGive(rbGET_TX_SEM_HANDLE(pxRingbuffer));
}
