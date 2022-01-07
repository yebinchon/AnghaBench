
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int uxRingbufferFlags; struct TYPE_6__* pucHead; } ;
typedef TYPE_1__ Ringbuffer_t ;
typedef scalar_t__ RingbufHandle_t ;


 int configASSERT (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int rbBUFFER_STATIC_FLAG ;
 int rbGET_RX_SEM_HANDLE (TYPE_1__*) ;
 int rbGET_TX_SEM_HANDLE (TYPE_1__*) ;
 int vSemaphoreDelete (int ) ;

void vRingbufferDelete(RingbufHandle_t xRingbuffer)
{
    Ringbuffer_t *pxRingbuffer = (Ringbuffer_t *)xRingbuffer;
    configASSERT(pxRingbuffer);

    vSemaphoreDelete(rbGET_TX_SEM_HANDLE(pxRingbuffer));
    vSemaphoreDelete(rbGET_RX_SEM_HANDLE(pxRingbuffer));







    free(pxRingbuffer->pucHead);
    free(pxRingbuffer);
}
