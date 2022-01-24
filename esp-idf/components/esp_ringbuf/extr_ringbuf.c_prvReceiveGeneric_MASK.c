#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ TickType_t ;
struct TYPE_8__ {int uxRingbufferFlags; scalar_t__ xItemsWaiting; int /*<<< orphan*/  mux; void* (* pvGetItem ) (TYPE_1__*,scalar_t__*,size_t,size_t*) ;} ;
typedef  TYPE_1__ Ringbuffer_t ;
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ pdFALSE ; 
 scalar_t__ pdTRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ portMAX_DELAY ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int rbALLOW_SPLIT_FLAG ; 
 int rbBYTE_BUFFER_FLAG ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 void* FUNC5 (TYPE_1__*,scalar_t__*,size_t,size_t*) ; 
 void* FUNC6 (TYPE_1__*,scalar_t__*,size_t,size_t*) ; 
 void* FUNC7 (TYPE_1__*,scalar_t__*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 () ; 

__attribute__((used)) static BaseType_t FUNC11(Ringbuffer_t *pxRingbuffer,
                                    void **pvItem1,
                                    void **pvItem2,
                                    size_t *xItemSize1,
                                    size_t *xItemSize2,
                                    size_t xMaxSize,
                                    TickType_t xTicksToWait)
{
    BaseType_t xReturn = pdFALSE;
    BaseType_t xReturnSemaphore = pdFALSE;
    TickType_t xTicksEnd = FUNC10() + xTicksToWait;
    TickType_t xTicksRemaining = xTicksToWait;
    while (xTicksRemaining <= xTicksToWait) {   //xTicksToWait will underflow once xTaskGetTickCount() > ticks_end
        //Block until more free space becomes available or timeout
        if (FUNC9(FUNC4(pxRingbuffer), xTicksRemaining) != pdTRUE) {
            xReturn = pdFALSE;     //Timed out attempting to get semaphore
            break;
        }

        //Semaphore obtained, check if item can be retrieved
        FUNC1(&pxRingbuffer->mux);
        if (FUNC3(pxRingbuffer) == pdTRUE) {
            //Item is available for retrieval
            BaseType_t xIsSplit;
            if (pxRingbuffer->uxRingbufferFlags & rbBYTE_BUFFER_FLAG) {
                //Second argument (pxIsSplit) is unused for byte buffers
                *pvItem1 = pxRingbuffer->pvGetItem(pxRingbuffer, NULL, xMaxSize, xItemSize1);
            } else {
                //Third argument (xMaxSize) is unused for no-split/allow-split buffers
                *pvItem1 = pxRingbuffer->pvGetItem(pxRingbuffer, &xIsSplit, 0, xItemSize1);
            }
            //Check for item split if configured to do so
            if ((pxRingbuffer->uxRingbufferFlags & rbALLOW_SPLIT_FLAG) && (pvItem2 != NULL) && (xItemSize2 != NULL)) {
                if (xIsSplit == pdTRUE) {
                    *pvItem2 = pxRingbuffer->pvGetItem(pxRingbuffer, &xIsSplit, 0, xItemSize2);
                    FUNC0(*pvItem2 < *pvItem1);  //Check wrap around has occurred
                    FUNC0(xIsSplit == pdFALSE);  //Second part should not have wrapped flag
                } else {
                    *pvItem2 = NULL;
                }
            }
            xReturn = pdTRUE;
            if (pxRingbuffer->xItemsWaiting > 0) {
                xReturnSemaphore = pdTRUE;
            }
            FUNC2(&pxRingbuffer->mux);
            break;
        }
        //No item available for retrieval, adjust ticks and take the semaphore again
        if (xTicksToWait != portMAX_DELAY) {
            xTicksRemaining = xTicksEnd - FUNC10();
        }
        FUNC2(&pxRingbuffer->mux);
        /*
         * Gap between critical section and re-acquiring of the semaphore. If
         * semaphore is given now, priority inversion might occur (see docs)
         */
    }

    if (xReturnSemaphore == pdTRUE) {
        FUNC8(FUNC4(pxRingbuffer));  //Give semaphore back so other tasks can retrieve
    }
    return xReturn;
}