#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Ringbuffer_t ;
typedef  scalar_t__ RingbufHandle_t ;
typedef  scalar_t__ QueueSetMemberHandle_t ;
typedef  int /*<<< orphan*/  BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pdFALSE ; 
 int /*<<< orphan*/  pdTRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

BaseType_t FUNC2(RingbufHandle_t xRingbuffer, QueueSetMemberHandle_t xMember)
{
    //Check if the selected queue set member is the ring buffer's read semaphore
    Ringbuffer_t *pxRingbuffer = (Ringbuffer_t *)xRingbuffer;
    FUNC0(pxRingbuffer);
    return (FUNC1(pxRingbuffer) == xMember) ? pdTRUE : pdFALSE;
}