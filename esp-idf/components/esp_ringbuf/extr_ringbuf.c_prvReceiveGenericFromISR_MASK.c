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
struct TYPE_8__ {int uxRingbufferFlags; scalar_t__ xItemsWaiting; int /*<<< orphan*/  mux; void* (* pvGetItem ) (TYPE_1__*,scalar_t__*,size_t,size_t*) ;} ;
typedef  TYPE_1__ Ringbuffer_t ;
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ pdFALSE ; 
 scalar_t__ pdTRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int rbALLOW_SPLIT_FLAG ; 
 int rbBYTE_BUFFER_FLAG ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 void* FUNC5 (TYPE_1__*,scalar_t__*,size_t,size_t*) ; 
 void* FUNC6 (TYPE_1__*,scalar_t__*,size_t,size_t*) ; 
 void* FUNC7 (TYPE_1__*,scalar_t__*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BaseType_t FUNC9(Ringbuffer_t *pxRingbuffer,
                                           void **pvItem1,
                                           void **pvItem2,
                                           size_t *xItemSize1,
                                           size_t *xItemSize2,
                                           size_t xMaxSize)
{
    BaseType_t xReturn = pdFALSE;
    BaseType_t xReturnSemaphore = pdFALSE;

    FUNC1(&pxRingbuffer->mux);
    if(FUNC3(pxRingbuffer) == pdTRUE) {
        BaseType_t xIsSplit;
        if (pxRingbuffer->uxRingbufferFlags & rbBYTE_BUFFER_FLAG) {
            //Second argument (pxIsSplit) is unused for byte buffers
            *pvItem1 = pxRingbuffer->pvGetItem(pxRingbuffer, NULL, xMaxSize, xItemSize1);
        } else {
            //Third argument (xMaxSize) is unused for no-split/allow-split buffers
            *pvItem1 = pxRingbuffer->pvGetItem(pxRingbuffer, &xIsSplit, 0, xItemSize1);
        }
        //Check for item split if configured to do so
        if ((pxRingbuffer->uxRingbufferFlags & rbALLOW_SPLIT_FLAG) && pvItem2 != NULL && xItemSize2 != NULL) {
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
    }
    FUNC2(&pxRingbuffer->mux);

    if (xReturnSemaphore == pdTRUE) {
        FUNC8(FUNC4(pxRingbuffer), NULL);  //Give semaphore back so other tasks can retrieve
    }
    return xReturn;
}