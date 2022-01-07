
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {size_t xItemLen; scalar_t__ uxItemFlags; } ;
struct TYPE_4__ {int uxRingbufferFlags; int * pucFree; int * pucAcquire; int * pucHead; int * pucTail; } ;
typedef TYPE_1__ Ringbuffer_t ;
typedef TYPE_2__ ItemHeader_t ;


 int configASSERT (int) ;
 size_t rbALIGN_SIZE (size_t) ;
 int rbBUFFER_FULL_FLAG ;
 int rbCHECK_ALIGNED (int *) ;
 size_t rbHEADER_SIZE ;
 scalar_t__ rbITEM_DUMMY_DATA_FLAG ;

__attribute__((used)) static uint8_t* prvAcquireItemNoSplit(Ringbuffer_t *pxRingbuffer, size_t xItemSize)
{

    size_t xAlignedItemSize = rbALIGN_SIZE(xItemSize);
    size_t xRemLen = pxRingbuffer->pucTail - pxRingbuffer->pucAcquire;
    configASSERT(rbCHECK_ALIGNED(pxRingbuffer->pucAcquire));
    configASSERT(pxRingbuffer->pucAcquire >= pxRingbuffer->pucHead && pxRingbuffer->pucAcquire < pxRingbuffer->pucTail);
    configASSERT(xRemLen >= rbHEADER_SIZE);


    if (xRemLen < xAlignedItemSize + rbHEADER_SIZE) {
        ItemHeader_t *pxDummy = (ItemHeader_t *)pxRingbuffer->pucAcquire;
        pxDummy->uxItemFlags = rbITEM_DUMMY_DATA_FLAG;
        pxDummy->xItemLen = 0;
        pxRingbuffer->pucAcquire = pxRingbuffer->pucHead;
    }


    ItemHeader_t *pxHeader = (ItemHeader_t *)pxRingbuffer->pucAcquire;
    pxHeader->xItemLen = xItemSize;
    pxHeader->uxItemFlags = 0;


    uint8_t* item_address = pxRingbuffer->pucAcquire + rbHEADER_SIZE;
    pxRingbuffer->pucAcquire += rbHEADER_SIZE + xAlignedItemSize;



    if (pxRingbuffer->pucTail - pxRingbuffer->pucAcquire < rbHEADER_SIZE) {
        pxRingbuffer->pucAcquire = pxRingbuffer->pucHead;
    }

    if (pxRingbuffer->pucAcquire == pxRingbuffer->pucFree) {

        pxRingbuffer->uxRingbufferFlags |= rbBUFFER_FULL_FLAG;
    }
    return item_address;
}
