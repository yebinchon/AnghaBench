#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VCOS_UNSIGNED ;
struct TYPE_4__ {int /*<<< orphan*/  semaphore; } ;
typedef  TYPE_1__ MMAL_QUEUE_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

MMAL_BUFFER_HEADER_T *FUNC2(MMAL_QUEUE_T *queue, VCOS_UNSIGNED timeout)
{
    if (!queue)
        return NULL;

    if (FUNC1(&queue->semaphore, timeout) != VCOS_SUCCESS)
        return NULL;

    return FUNC0(queue);
}