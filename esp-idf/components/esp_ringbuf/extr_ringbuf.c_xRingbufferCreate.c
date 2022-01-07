
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * xRecvSemHandle; int * xTransSemHandle; int xRecvSemStatic; int xTransSemStatic; } ;
typedef TYPE_1__ uint8_t ;
typedef TYPE_1__ Ringbuffer_t ;
typedef scalar_t__ RingbufferType_t ;
typedef int * RingbufHandle_t ;


 scalar_t__ RINGBUF_TYPE_BYTEBUF ;
 scalar_t__ RINGBUF_TYPE_MAX ;
 TYPE_1__* calloc (int,int) ;
 int configASSERT (int) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (size_t) ;
 int prvInitializeNewRingbuffer (size_t,scalar_t__,TYPE_1__*,TYPE_1__*) ;
 size_t rbALIGN_SIZE (size_t) ;
 int vSemaphoreDelete (int *) ;
 void* xSemaphoreCreateBinary () ;
 int xSemaphoreCreateBinaryStatic (int *) ;

RingbufHandle_t xRingbufferCreate(size_t xBufferSize, RingbufferType_t xBufferType)
{
    configASSERT(xBufferSize > 0);
    configASSERT(xBufferType < RINGBUF_TYPE_MAX);


    if (xBufferType != RINGBUF_TYPE_BYTEBUF) {
        xBufferSize = rbALIGN_SIZE(xBufferSize);
    }
    Ringbuffer_t *pxNewRingbuffer = calloc(1, sizeof(Ringbuffer_t));
    uint8_t *pucRingbufferStorage = malloc(xBufferSize);
    if (pxNewRingbuffer == ((void*)0) || pucRingbufferStorage == ((void*)0)) {
        goto err;
    }







    pxNewRingbuffer->xTransSemHandle = xSemaphoreCreateBinary();
    pxNewRingbuffer->xRecvSemHandle = xSemaphoreCreateBinary();
    if (pxNewRingbuffer->xTransSemHandle == ((void*)0) || pxNewRingbuffer->xRecvSemHandle == ((void*)0)) {
        if (pxNewRingbuffer->xTransSemHandle != ((void*)0)) {
            vSemaphoreDelete(pxNewRingbuffer->xTransSemHandle);
        }
        if (pxNewRingbuffer->xRecvSemHandle != ((void*)0)) {
            vSemaphoreDelete(pxNewRingbuffer->xRecvSemHandle);
        }
        goto err;
    }


    prvInitializeNewRingbuffer(xBufferSize, xBufferType, pxNewRingbuffer, pucRingbufferStorage);
    return (RingbufHandle_t)pxNewRingbuffer;

err:

    free(pxNewRingbuffer);
    free(pucRingbufferStorage);
    return ((void*)0);
}
