#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int uxRingbufferFlags; struct TYPE_6__* pucHead; } ;
typedef  TYPE_1__ Ringbuffer_t ;
typedef  scalar_t__ RingbufHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int rbBUFFER_STATIC_FLAG ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(RingbufHandle_t xRingbuffer)
{
    Ringbuffer_t *pxRingbuffer = (Ringbuffer_t *)xRingbuffer;
    FUNC0(pxRingbuffer);

    FUNC4(FUNC3(pxRingbuffer));
    FUNC4(FUNC2(pxRingbuffer));

#if ( configSUPPORT_STATIC_ALLOCATION == 1 )
    if (pxRingbuffer->uxRingbufferFlags & rbBUFFER_STATIC_FLAG) {
        //Ring buffer was statically allocated, no need to free
        return;
    }
#endif
    FUNC1(pxRingbuffer->pucHead);
    FUNC1(pxRingbuffer);
}