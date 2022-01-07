
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Ringbuffer_t ;
typedef scalar_t__ RingbufHandle_t ;


 int configASSERT (int *) ;
 scalar_t__ pdTRUE ;
 scalar_t__ prvReceiveGenericFromISR (int *,void**,int *,size_t*,int *,int ) ;

void *xRingbufferReceiveFromISR(RingbufHandle_t xRingbuffer, size_t *pxItemSize)
{

    Ringbuffer_t *pxRingbuffer = (Ringbuffer_t *)xRingbuffer;
    configASSERT(pxRingbuffer);


    void *pvTempItem;
    size_t xTempSize;
    if (prvReceiveGenericFromISR(pxRingbuffer, &pvTempItem, ((void*)0), &xTempSize, ((void*)0), 0) == pdTRUE) {
        if (pxItemSize != ((void*)0)) {
            *pxItemSize = xTempSize;
        }
        return pvTempItem;
    } else {
        return ((void*)0);
    }
}
