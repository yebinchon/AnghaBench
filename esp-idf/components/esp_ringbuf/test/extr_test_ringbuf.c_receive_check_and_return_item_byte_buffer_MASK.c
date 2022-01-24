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
typedef  scalar_t__ const uint8_t ;
typedef  int /*<<< orphan*/  TickType_t ;
typedef  int /*<<< orphan*/  RingbufHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,size_t*,size_t) ; 

__attribute__((used)) static void FUNC5(RingbufHandle_t handle, const uint8_t *expected_data, size_t expected_size, TickType_t ticks_to_wait, bool in_isr)
{
    //Receive item
    size_t item_size;
    uint8_t *item;
    if (in_isr) {
        item = (uint8_t *)FUNC4(handle, &item_size, expected_size);
    } else {
        item = (uint8_t *)FUNC3(handle, &item_size, ticks_to_wait, expected_size);   //Limit amount of bytes returned to the size of one item
    }
    FUNC0(item != NULL, "Failed to receive item");

    //Check data of received item
    for (int i = 0; i < item_size; i++) {
        FUNC0(item[i] == expected_data[i], "Item data is invalid");
    }
    //Return item
    if (in_isr) {
        FUNC2(handle, (void *)item, NULL);
    } else {
        FUNC1(handle, (void *)item);
    }

    //Check if item wrapped around
    if (item_size < expected_size) {
        //Item is wrapped, receive second portion
        size_t item_size2;
        uint8_t *item2;
        if (in_isr) {
            item2 = (uint8_t *)FUNC4(handle, &item_size2, expected_size - item_size);
        } else {
            item2 = (uint8_t *)FUNC3(handle, &item_size2, ticks_to_wait, expected_size - item_size);
        }
        //= (uint8_t *)xRingbufferReceiveUpTo(handle, &item_size2, ticks_to_wait, expected_size - item_size);
        FUNC0(item2 != NULL, "Failed to receive item");
        FUNC0(item_size + item_size2 == expected_size, "Total item size is incorrect");
        for (int i = 0; i < item_size2; i++) {
            FUNC0(item2[i] == expected_data[item_size + i], "Item data is invalid");
        }
        if (in_isr) {
            FUNC2(handle, (void *)item2, NULL);
        } else {
            FUNC1(handle, (void *)item2);
        }
    } else {
        FUNC0(item_size == expected_size, "Item size is incorrect");
    }
}