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
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 scalar_t__ ISR_ITERATIONS ; 
 size_t NO_OF_RB_TYPES ; 
 size_t RINGBUF_TYPE_ALLOWSPLIT ; 
 size_t RINGBUF_TYPE_BYTEBUF ; 
 size_t RINGBUF_TYPE_NOSPLIT ; 
 int /*<<< orphan*/  SMALL_ITEM_SIZE ; 
 int /*<<< orphan*/  TIMER_0 ; 
 int /*<<< orphan*/  TIMER_GROUP_0 ; 
 size_t buf_type ; 
 int /*<<< orphan*/ * buffer_handles ; 
 int /*<<< orphan*/  done_sem ; 
 scalar_t__ iterations ; 
 scalar_t__ pdFALSE ; 
 scalar_t__ pdTRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ small_item ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC9(void *arg)
{
    //Clear timer interrupt
    FUNC6(TIMER_GROUP_0, TIMER_0);
    FUNC5(TIMER_GROUP_0, FUNC7());

    //Test sending to buffer from ISR from ISR
    if (buf_type < NO_OF_RB_TYPES) {
        FUNC4(buffer_handles[buf_type], (void *)small_item, SMALL_ITEM_SIZE, 0, true);
    }

    //Receive item from ISR
    if (buf_type == RINGBUF_TYPE_NOSPLIT) {
        //Test receive from ISR for no-split buffer
        FUNC3(buffer_handles[buf_type], (void *)small_item, SMALL_ITEM_SIZE, 0, true);
        buf_type++;
    } else if (buf_type == RINGBUF_TYPE_ALLOWSPLIT) {
        //Test send from ISR to allow-split buffer
        FUNC1(buffer_handles[buf_type], (void *)small_item, SMALL_ITEM_SIZE, 0, true);
        buf_type++;
    } else if (buf_type == RINGBUF_TYPE_BYTEBUF) {
        //Test receive from ISR for byte buffer
        FUNC2(buffer_handles[buf_type], (void *)small_item, SMALL_ITEM_SIZE, 0, true);
        buf_type++;
    } else if (buf_type == NO_OF_RB_TYPES) {
        //Check if all iterations complete
        if (iterations < ISR_ITERATIONS) {
            iterations++;
            buf_type = 0;   //Reset and iterate through each buffer type again
            return;
        } else {
            //Signal complete
            BaseType_t task_woken = pdFALSE;
            FUNC8(done_sem, &task_woken);
            if (task_woken == pdTRUE) {
                buf_type++;
                FUNC0();
            }
        }
    }
}