
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {size_t xItemLen; scalar_t__ uxItemFlags; } ;
struct TYPE_4__ {size_t pucTail; size_t pucAcquire; scalar_t__ pucHead; scalar_t__ pucFree; scalar_t__ pucWrite; int uxRingbufferFlags; int xItemsWaiting; } ;
typedef TYPE_1__ Ringbuffer_t ;
typedef TYPE_2__ ItemHeader_t ;


 int configASSERT (int) ;
 int memcpy (scalar_t__,int const*,size_t) ;
 size_t rbALIGN_SIZE (size_t) ;
 int rbBUFFER_FULL_FLAG ;
 int rbCHECK_ALIGNED (size_t) ;
 size_t rbHEADER_SIZE ;
 scalar_t__ rbITEM_DUMMY_DATA_FLAG ;
 scalar_t__ rbITEM_SPLIT_FLAG ;

__attribute__((used)) static void prvCopyItemAllowSplit(Ringbuffer_t *pxRingbuffer, const uint8_t *pucItem, size_t xItemSize)
{

    size_t xAlignedItemSize = rbALIGN_SIZE(xItemSize);
    size_t xRemLen = pxRingbuffer->pucTail - pxRingbuffer->pucAcquire;
    configASSERT(rbCHECK_ALIGNED(pxRingbuffer->pucAcquire));
    configASSERT(pxRingbuffer->pucAcquire >= pxRingbuffer->pucHead && pxRingbuffer->pucAcquire < pxRingbuffer->pucTail);
    configASSERT(xRemLen >= rbHEADER_SIZE);


    if (xRemLen < xAlignedItemSize + rbHEADER_SIZE) {

        ItemHeader_t *pxFirstHeader = (ItemHeader_t *)pxRingbuffer->pucAcquire;
        pxFirstHeader->uxItemFlags = 0;
        pxFirstHeader->xItemLen = xRemLen - rbHEADER_SIZE;
        pxRingbuffer->pucAcquire += rbHEADER_SIZE;
        xRemLen -= rbHEADER_SIZE;
        if (xRemLen > 0) {
            memcpy(pxRingbuffer->pucAcquire, pucItem, xRemLen);
            pxRingbuffer->xItemsWaiting++;

            pucItem += xRemLen;
            xItemSize -= xRemLen;
            xAlignedItemSize -= xRemLen;
            pxFirstHeader->uxItemFlags |= rbITEM_SPLIT_FLAG;
        } else {

            pxFirstHeader->uxItemFlags |= rbITEM_DUMMY_DATA_FLAG;
        }
        pxRingbuffer->pucAcquire = pxRingbuffer->pucHead;
    }


    ItemHeader_t *pxSecondHeader = (ItemHeader_t *)pxRingbuffer->pucAcquire;
    pxSecondHeader->xItemLen = xItemSize;
    pxSecondHeader->uxItemFlags = 0;
    pxRingbuffer->pucAcquire += rbHEADER_SIZE;
    memcpy(pxRingbuffer->pucAcquire, pucItem, xItemSize);
    pxRingbuffer->xItemsWaiting++;
    pxRingbuffer->pucAcquire += xAlignedItemSize;


    if (pxRingbuffer->pucTail - pxRingbuffer->pucAcquire < rbHEADER_SIZE) {
        pxRingbuffer->pucAcquire = pxRingbuffer->pucHead;
    }

    if (pxRingbuffer->pucAcquire == pxRingbuffer->pucFree) {

        pxRingbuffer->uxRingbufferFlags |= rbBUFFER_FULL_FLAG;
    }


    pxRingbuffer->pucWrite = pxRingbuffer->pucAcquire;
}
