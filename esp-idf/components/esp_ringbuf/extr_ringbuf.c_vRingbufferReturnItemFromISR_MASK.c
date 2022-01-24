#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  mux; int /*<<< orphan*/  (* vReturnItem ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ Ringbuffer_t ;
typedef  scalar_t__ RingbufHandle_t ;
typedef  int /*<<< orphan*/  BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(RingbufHandle_t xRingbuffer, void *pvItem, BaseType_t *pxHigherPriorityTaskWoken)
{
    Ringbuffer_t *pxRingbuffer = (Ringbuffer_t *)xRingbuffer;
    FUNC0(pxRingbuffer);
    FUNC0(pvItem != NULL);

    FUNC1(&pxRingbuffer->mux);
    pxRingbuffer->vReturnItem(pxRingbuffer, (uint8_t *)pvItem);
    FUNC2(&pxRingbuffer->mux);
    FUNC5(FUNC3(pxRingbuffer), pxHigherPriorityTaskWoken);
}