
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {scalar_t__ xItemLen; int uxItemFlags; } ;
struct TYPE_4__ {scalar_t__ xMaxItemSize; int xSize; int uxRingbufferFlags; int * pucRead; int * pucFree; int * pucAcquire; int * pucHead; int * pucTail; } ;
typedef TYPE_1__ Ringbuffer_t ;
typedef TYPE_2__ ItemHeader_t ;


 int configASSERT (int) ;
 size_t rbALIGN_SIZE (scalar_t__) ;
 int rbBUFFER_FULL_FLAG ;
 int rbCHECK_ALIGNED (int *) ;
 int rbHEADER_SIZE ;
 int rbITEM_DUMMY_DATA_FLAG ;
 int rbITEM_FREE_FLAG ;
 int rbITEM_SPLIT_FLAG ;

__attribute__((used)) static void prvReturnItemDefault(Ringbuffer_t *pxRingbuffer, uint8_t *pucItem)
{

    configASSERT(rbCHECK_ALIGNED(pucItem));
    configASSERT(pucItem >= pxRingbuffer->pucHead);
    configASSERT(pucItem <= pxRingbuffer->pucTail);


    ItemHeader_t *pxCurHeader = (ItemHeader_t *)(pucItem - rbHEADER_SIZE);
    configASSERT(pxCurHeader->xItemLen <= pxRingbuffer->xMaxItemSize);
    configASSERT((pxCurHeader->uxItemFlags & rbITEM_DUMMY_DATA_FLAG) == 0);
    configASSERT((pxCurHeader->uxItemFlags & rbITEM_FREE_FLAG) == 0);
    pxCurHeader->uxItemFlags &= ~rbITEM_SPLIT_FLAG;
    pxCurHeader->uxItemFlags |= rbITEM_FREE_FLAG;







    pxCurHeader = (ItemHeader_t *)pxRingbuffer->pucFree;

    while (((pxCurHeader->uxItemFlags & rbITEM_FREE_FLAG) || (pxCurHeader->uxItemFlags & rbITEM_DUMMY_DATA_FLAG)) && pxRingbuffer->pucFree != pxRingbuffer->pucRead) {
        if (pxCurHeader->uxItemFlags & rbITEM_DUMMY_DATA_FLAG) {
            pxCurHeader->uxItemFlags |= rbITEM_FREE_FLAG;
            pxRingbuffer->pucFree = pxRingbuffer->pucHead;
        } else {

            size_t xAlignedItemSize = rbALIGN_SIZE(pxCurHeader->xItemLen);
            pxRingbuffer->pucFree += xAlignedItemSize + rbHEADER_SIZE;

            configASSERT(pxRingbuffer->pucFree <= pxRingbuffer->pucHead + pxRingbuffer->xSize);
        }

        if ((pxRingbuffer->pucTail - pxRingbuffer->pucFree) < rbHEADER_SIZE) {
            pxRingbuffer->pucFree = pxRingbuffer->pucHead;
        }
        pxCurHeader = (ItemHeader_t *)pxRingbuffer->pucFree;
    }


    if (pxRingbuffer->uxRingbufferFlags & rbBUFFER_FULL_FLAG) {
        if (pxRingbuffer->pucFree != pxRingbuffer->pucAcquire) {
            pxRingbuffer->uxRingbufferFlags &= ~rbBUFFER_FULL_FLAG;
        } else if (pxRingbuffer->pucFree == pxRingbuffer->pucAcquire && pxRingbuffer->pucFree == pxRingbuffer->pucRead) {

            pxRingbuffer->uxRingbufferFlags &= ~rbBUFFER_FULL_FLAG;
        }
    }
}
