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
struct TYPE_8__ {int /*<<< orphan*/ * xRecvSemHandle; int /*<<< orphan*/ * xTransSemHandle; int /*<<< orphan*/  xRecvSemStatic; int /*<<< orphan*/  xTransSemStatic; } ;
typedef  TYPE_1__ uint8_t ;
typedef  TYPE_1__ Ringbuffer_t ;
typedef  scalar_t__ RingbufferType_t ;
typedef  int /*<<< orphan*/ * RingbufHandle_t ;

/* Variables and functions */
 scalar_t__ RINGBUF_TYPE_BYTEBUF ; 
 scalar_t__ RINGBUF_TYPE_MAX ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t,scalar_t__,TYPE_1__*,TYPE_1__*) ; 
 size_t FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

RingbufHandle_t FUNC9(size_t xBufferSize, RingbufferType_t xBufferType)
{
    FUNC1(xBufferSize > 0);
    FUNC1(xBufferType < RINGBUF_TYPE_MAX);

    //Allocate memory
    if (xBufferType != RINGBUF_TYPE_BYTEBUF) {
        xBufferSize = FUNC5(xBufferSize);    //xBufferSize is rounded up for no-split/allow-split buffers
    }
    Ringbuffer_t *pxNewRingbuffer = FUNC0(1, sizeof(Ringbuffer_t));
    uint8_t *pucRingbufferStorage = FUNC3(xBufferSize);
    if (pxNewRingbuffer == NULL || pucRingbufferStorage == NULL) {
        goto err;
    }

    //Initialize Semaphores
#if ( configSUPPORT_STATIC_ALLOCATION == 1)
    //We don't use the handles for static semaphores, and xSemaphoreCreateBinaryStatic will never fail thus no need to check static case
    xSemaphoreCreateBinaryStatic(&(pxNewRingbuffer->xTransSemStatic));
    xSemaphoreCreateBinaryStatic(&(pxNewRingbuffer->xRecvSemStatic));
#else
    pxNewRingbuffer->xTransSemHandle = FUNC7();
    pxNewRingbuffer->xRecvSemHandle = FUNC7();
    if (pxNewRingbuffer->xTransSemHandle == NULL || pxNewRingbuffer->xRecvSemHandle == NULL) {
        if (pxNewRingbuffer->xTransSemHandle != NULL) {
            FUNC6(pxNewRingbuffer->xTransSemHandle);
        }
        if (pxNewRingbuffer->xRecvSemHandle != NULL) {
            FUNC6(pxNewRingbuffer->xRecvSemHandle);
        }
        goto err;
    }
#endif

    FUNC4(xBufferSize, xBufferType, pxNewRingbuffer, pucRingbufferStorage);
    return (RingbufHandle_t)pxNewRingbuffer;

err:
    //An error has occurred, Free memory and return NULL
    FUNC2(pxNewRingbuffer);
    FUNC2(pucRingbufferStorage);
    return NULL;
}