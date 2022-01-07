
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {size_t xSize; int xMaxItemSize; int mux; int xGetCurMaxSize; void* vReturnItem; void* pvGetItem; int vCopyItem; void* xCheckItemFits; int uxRingbufferFlags; scalar_t__ xItemsWaiting; int * pucAcquire; int * pucWrite; int * pucRead; int * pucFree; int * pucTail; int * pucHead; } ;
typedef TYPE_1__ Ringbuffer_t ;
typedef scalar_t__ RingbufferType_t ;
typedef int ItemHeader_t ;


 scalar_t__ RINGBUF_TYPE_ALLOWSPLIT ;
 scalar_t__ RINGBUF_TYPE_NOSPLIT ;
 void* prvCheckItemFitsByteBuffer ;
 void* prvCheckItemFitsDefault ;
 int prvCopyItemAllowSplit ;
 int prvCopyItemByteBuf ;
 int prvCopyItemNoSplit ;
 int prvGetCurMaxSizeAllowSplit ;
 int prvGetCurMaxSizeByteBuf ;
 int prvGetCurMaxSizeNoSplit ;
 void* prvGetItemByteBuf ;
 void* prvGetItemDefault ;
 void* prvReturnItemByteBuf ;
 void* prvReturnItemDefault ;
 int rbALIGN_SIZE (int) ;
 int rbALLOW_SPLIT_FLAG ;
 int rbBYTE_BUFFER_FLAG ;
 int rbGET_TX_SEM_HANDLE (TYPE_1__*) ;
 int rbHEADER_SIZE ;
 int vPortCPUInitializeMutex (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void prvInitializeNewRingbuffer(size_t xBufferSize,
                                       RingbufferType_t xBufferType,
                                       Ringbuffer_t *pxNewRingbuffer,
                                       uint8_t *pucRingbufferStorage)
{

    pxNewRingbuffer->xSize = xBufferSize;
    pxNewRingbuffer->pucHead = pucRingbufferStorage;
    pxNewRingbuffer->pucTail = pucRingbufferStorage + xBufferSize;
    pxNewRingbuffer->pucFree = pucRingbufferStorage;
    pxNewRingbuffer->pucRead = pucRingbufferStorage;
    pxNewRingbuffer->pucWrite = pucRingbufferStorage;
    pxNewRingbuffer->pucAcquire = pucRingbufferStorage;
    pxNewRingbuffer->xItemsWaiting = 0;
    pxNewRingbuffer->uxRingbufferFlags = 0;


    if (xBufferType == RINGBUF_TYPE_NOSPLIT) {
        pxNewRingbuffer->xCheckItemFits = prvCheckItemFitsDefault;
        pxNewRingbuffer->vCopyItem = prvCopyItemNoSplit;
        pxNewRingbuffer->pvGetItem = prvGetItemDefault;
        pxNewRingbuffer->vReturnItem = prvReturnItemDefault;




        pxNewRingbuffer->xMaxItemSize = rbALIGN_SIZE(pxNewRingbuffer->xSize / 2) - rbHEADER_SIZE;
        pxNewRingbuffer->xGetCurMaxSize = prvGetCurMaxSizeNoSplit;
    } else if (xBufferType == RINGBUF_TYPE_ALLOWSPLIT) {
        pxNewRingbuffer->uxRingbufferFlags |= rbALLOW_SPLIT_FLAG;
        pxNewRingbuffer->xCheckItemFits = prvCheckItemFitsDefault;
        pxNewRingbuffer->vCopyItem = prvCopyItemAllowSplit;
        pxNewRingbuffer->pvGetItem = prvGetItemDefault;
        pxNewRingbuffer->vReturnItem = prvReturnItemDefault;

        pxNewRingbuffer->xMaxItemSize = pxNewRingbuffer->xSize - (sizeof(ItemHeader_t) * 2);
        pxNewRingbuffer->xGetCurMaxSize = prvGetCurMaxSizeAllowSplit;
    } else {
        pxNewRingbuffer->uxRingbufferFlags |= rbBYTE_BUFFER_FLAG;
        pxNewRingbuffer->xCheckItemFits = prvCheckItemFitsByteBuffer;
        pxNewRingbuffer->vCopyItem = prvCopyItemByteBuf;
        pxNewRingbuffer->pvGetItem = prvGetItemByteBuf;
        pxNewRingbuffer->vReturnItem = prvReturnItemByteBuf;

        pxNewRingbuffer->xMaxItemSize = pxNewRingbuffer->xSize;
        pxNewRingbuffer->xGetCurMaxSize = prvGetCurMaxSizeByteBuf;
    }
    xSemaphoreGive(rbGET_TX_SEM_HANDLE(pxNewRingbuffer));
    vPortCPUInitializeMutex(&pxNewRingbuffer->mux);
}
