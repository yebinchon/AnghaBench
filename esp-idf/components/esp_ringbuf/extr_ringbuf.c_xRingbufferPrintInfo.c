
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xSize; int pucRead; int pucHead; int pucFree; int pucWrite; int pucAcquire; } ;
typedef TYPE_1__ Ringbuffer_t ;
typedef scalar_t__ RingbufHandle_t ;


 int configASSERT (TYPE_1__*) ;
 int printf (char*,int,int,int,int,int,int) ;
 int prvGetFreeSize (TYPE_1__*) ;

void xRingbufferPrintInfo(RingbufHandle_t xRingbuffer)
{
    Ringbuffer_t *pxRingbuffer = (Ringbuffer_t *)xRingbuffer;
    configASSERT(pxRingbuffer);
    printf("Rb size:%d\tfree: %d\trptr: %d\tfreeptr: %d\twptr: %d, aptr: %d\n",
           pxRingbuffer->xSize, prvGetFreeSize(pxRingbuffer),
           pxRingbuffer->pucRead - pxRingbuffer->pucHead,
           pxRingbuffer->pucFree - pxRingbuffer->pucHead,
           pxRingbuffer->pucWrite - pxRingbuffer->pucHead,
           pxRingbuffer->pucAcquire - pxRingbuffer->pucHead);
}
