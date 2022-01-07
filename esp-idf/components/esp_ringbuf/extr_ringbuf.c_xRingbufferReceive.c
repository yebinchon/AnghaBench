
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TickType_t ;
typedef int Ringbuffer_t ;
typedef scalar_t__ RingbufHandle_t ;


 int configASSERT (int *) ;
 scalar_t__ pdTRUE ;
 scalar_t__ prvReceiveGeneric (int *,void**,int *,size_t*,int *,int ,int ) ;

void *xRingbufferReceive(RingbufHandle_t xRingbuffer, size_t *pxItemSize, TickType_t xTicksToWait)
{

    Ringbuffer_t *pxRingbuffer = (Ringbuffer_t *)xRingbuffer;
    configASSERT(pxRingbuffer);


    void *pvTempItem;
    size_t xTempSize;
    if (prvReceiveGeneric(pxRingbuffer, &pvTempItem, ((void*)0), &xTempSize, ((void*)0), 0, xTicksToWait) == pdTRUE) {
        if (pxItemSize != ((void*)0)) {
            *pxItemSize = xTempSize;
        }
        return pvTempItem;
    } else {
        return ((void*)0);
    }
}
