#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ready_can_be_called; int /*<<< orphan*/  semaphore; void* result; } ;
typedef  TYPE_1__ future_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(future_t *future, void *value)
{
    FUNC0(future != NULL);
    FUNC0(future->ready_can_be_called);

    future->ready_can_be_called = false;
    future->result = value;
    FUNC1(&future->semaphore);
}