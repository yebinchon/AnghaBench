
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
struct TYPE_3__ {int mux; scalar_t__ xItemsWaiting; scalar_t__ pucHead; scalar_t__ pucAcquire; scalar_t__ pucWrite; scalar_t__ pucRead; scalar_t__ pucFree; } ;
typedef TYPE_1__ Ringbuffer_t ;
typedef scalar_t__ RingbufHandle_t ;


 int configASSERT (TYPE_1__*) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;

void vRingbufferGetInfo(RingbufHandle_t xRingbuffer,
                        UBaseType_t *uxFree,
                        UBaseType_t *uxRead,
                        UBaseType_t *uxWrite,
                        UBaseType_t *uxAcquire,
                        UBaseType_t *uxItemsWaiting)
{
    Ringbuffer_t *pxRingbuffer = (Ringbuffer_t *)xRingbuffer;
    configASSERT(pxRingbuffer);

    portENTER_CRITICAL(&pxRingbuffer->mux);
    if (uxFree != ((void*)0)) {
        *uxFree = (UBaseType_t)(pxRingbuffer->pucFree - pxRingbuffer->pucHead);
    }
    if (uxRead != ((void*)0)) {
        *uxRead = (UBaseType_t)(pxRingbuffer->pucRead - pxRingbuffer->pucHead);
    }
    if (uxWrite != ((void*)0)) {
        *uxWrite = (UBaseType_t)(pxRingbuffer->pucWrite - pxRingbuffer->pucHead);
    }
    if (uxAcquire != ((void*)0)) {
        *uxAcquire = (UBaseType_t)(pxRingbuffer->pucAcquire - pxRingbuffer->pucHead);
    }
    if (uxItemsWaiting != ((void*)0)) {
        *uxItemsWaiting = (UBaseType_t)(pxRingbuffer->xItemsWaiting);
    }
    portEXIT_CRITICAL(&pxRingbuffer->mux);
}
