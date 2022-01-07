
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {size_t xItemLen; int uxItemFlags; } ;
struct TYPE_4__ {scalar_t__ xItemsWaiting; int uxRingbufferFlags; size_t xMaxItemSize; int * pucHead; int * pucRead; int * pucTail; int * pucWrite; } ;
typedef TYPE_1__ Ringbuffer_t ;
typedef TYPE_2__ ItemHeader_t ;
typedef int BaseType_t ;


 int configASSERT (int) ;
 int pdFALSE ;
 int pdTRUE ;
 int rbALIGN_SIZE (size_t) ;
 int rbBUFFER_FULL_FLAG ;
 int rbCHECK_ALIGNED (int *) ;
 int rbHEADER_SIZE ;
 int rbITEM_DUMMY_DATA_FLAG ;
 int rbITEM_SPLIT_FLAG ;

__attribute__((used)) static void *prvGetItemDefault(Ringbuffer_t *pxRingbuffer,
                               BaseType_t *pxIsSplit,
                               size_t xUnusedParam,
                               size_t *pxItemSize)
{

    ItemHeader_t *pxHeader = (ItemHeader_t *)pxRingbuffer->pucRead;
    configASSERT(pxIsSplit != ((void*)0));
    configASSERT((pxRingbuffer->xItemsWaiting > 0) && ((pxRingbuffer->pucRead != pxRingbuffer->pucWrite) || (pxRingbuffer->uxRingbufferFlags & rbBUFFER_FULL_FLAG)));
    configASSERT(rbCHECK_ALIGNED(pxRingbuffer->pucRead));
    configASSERT(pxRingbuffer->pucRead >= pxRingbuffer->pucHead && pxRingbuffer->pucRead < pxRingbuffer->pucTail);
    configASSERT((pxHeader->xItemLen <= pxRingbuffer->xMaxItemSize) || (pxHeader->uxItemFlags & rbITEM_DUMMY_DATA_FLAG));

    uint8_t *pcReturn;

    if (pxHeader->uxItemFlags & rbITEM_DUMMY_DATA_FLAG) {
        pxRingbuffer->pucRead = pxRingbuffer->pucHead;

        pxHeader = (ItemHeader_t *)pxRingbuffer->pucRead;
        configASSERT(pxHeader->xItemLen <= pxRingbuffer->xMaxItemSize);
    }
    pcReturn = pxRingbuffer->pucRead + rbHEADER_SIZE;
    if (pxHeader->xItemLen == 0) {

        configASSERT(pcReturn >= pxRingbuffer->pucHead && pcReturn <= pxRingbuffer->pucTail);
    } else {

        configASSERT(pcReturn >= pxRingbuffer->pucHead && pcReturn < pxRingbuffer->pucTail);
    }
    *pxItemSize = pxHeader->xItemLen;
    pxRingbuffer->xItemsWaiting --;
    *pxIsSplit = (pxHeader->uxItemFlags & rbITEM_SPLIT_FLAG) ? pdTRUE : pdFALSE;

    pxRingbuffer->pucRead += rbHEADER_SIZE + rbALIGN_SIZE(pxHeader->xItemLen);

    if ((pxRingbuffer->pucTail - pxRingbuffer->pucRead) < rbHEADER_SIZE) {
        pxRingbuffer->pucRead = pxRingbuffer->pucHead;
    }
    return (void *)pcReturn;
}
