
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int uxRingbufferFlags; scalar_t__ xItemsWaiting; int mux; void* (* pvGetItem ) (TYPE_1__*,scalar_t__*,size_t,size_t*) ;} ;
typedef TYPE_1__ Ringbuffer_t ;
typedef scalar_t__ BaseType_t ;


 int configASSERT (int) ;
 scalar_t__ pdFALSE ;
 scalar_t__ pdTRUE ;
 int portENTER_CRITICAL_ISR (int *) ;
 int portEXIT_CRITICAL_ISR (int *) ;
 scalar_t__ prvCheckItemAvail (TYPE_1__*) ;
 int rbALLOW_SPLIT_FLAG ;
 int rbBYTE_BUFFER_FLAG ;
 int rbGET_RX_SEM_HANDLE (TYPE_1__*) ;
 void* stub1 (TYPE_1__*,scalar_t__*,size_t,size_t*) ;
 void* stub2 (TYPE_1__*,scalar_t__*,size_t,size_t*) ;
 void* stub3 (TYPE_1__*,scalar_t__*,size_t,size_t*) ;
 int xSemaphoreGiveFromISR (int ,int *) ;

__attribute__((used)) static BaseType_t prvReceiveGenericFromISR(Ringbuffer_t *pxRingbuffer,
                                           void **pvItem1,
                                           void **pvItem2,
                                           size_t *xItemSize1,
                                           size_t *xItemSize2,
                                           size_t xMaxSize)
{
    BaseType_t xReturn = pdFALSE;
    BaseType_t xReturnSemaphore = pdFALSE;

    portENTER_CRITICAL_ISR(&pxRingbuffer->mux);
    if(prvCheckItemAvail(pxRingbuffer) == pdTRUE) {
        BaseType_t xIsSplit;
        if (pxRingbuffer->uxRingbufferFlags & rbBYTE_BUFFER_FLAG) {

            *pvItem1 = pxRingbuffer->pvGetItem(pxRingbuffer, ((void*)0), xMaxSize, xItemSize1);
        } else {

            *pvItem1 = pxRingbuffer->pvGetItem(pxRingbuffer, &xIsSplit, 0, xItemSize1);
        }

        if ((pxRingbuffer->uxRingbufferFlags & rbALLOW_SPLIT_FLAG) && pvItem2 != ((void*)0) && xItemSize2 != ((void*)0)) {
            if (xIsSplit == pdTRUE) {
                *pvItem2 = pxRingbuffer->pvGetItem(pxRingbuffer, &xIsSplit, 0, xItemSize2);
                configASSERT(*pvItem2 < *pvItem1);
                configASSERT(xIsSplit == pdFALSE);
            } else {
                *pvItem2 = ((void*)0);
            }
        }
        xReturn = pdTRUE;
        if (pxRingbuffer->xItemsWaiting > 0) {
            xReturnSemaphore = pdTRUE;
        }
    }
    portEXIT_CRITICAL_ISR(&pxRingbuffer->mux);

    if (xReturnSemaphore == pdTRUE) {
        xSemaphoreGiveFromISR(rbGET_RX_SEM_HANDLE(pxRingbuffer), ((void*)0));
    }
    return xReturn;
}
