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
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ pdTRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void**,void**,size_t*,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void**,void**,size_t*,size_t*) ; 

__attribute__((used)) static void FUNC5(RingbufHandle_t handle, const uint8_t *expected_data, size_t expected_size, TickType_t ticks_to_wait, bool in_isr)
{
    //Receive item
    size_t item_size1, item_size2;
    uint8_t *item1, *item2;
    BaseType_t ret;
    if (in_isr) {
        ret = FUNC4(handle, (void**)&item1, (void **)&item2, &item_size1, &item_size2);
    } else {
        ret = FUNC3(handle, (void**)&item1, (void **)&item2, &item_size1, &item_size2, ticks_to_wait);
    }
    //= xRingbufferReceiveSplit(handle, (void**)&item1, (void **)&item2, &item_size1, &item_size2, ticks_to_wait);
    FUNC0(ret == pdTRUE, "Failed to receive item");
    FUNC0(item1 != NULL, "Failed to receive item");

    //Check data of received item(s) and return them
    if (item2 == NULL) {
        FUNC0(item_size1 == expected_size, "Item size is incorrect");
        for (int i = 0; i < item_size1; i++) {
            FUNC0(item1[i] == expected_data[i], "Item data is invalid");
        }
        //Return item
        if (in_isr) {
            FUNC2(handle, (void *)item1, NULL);
        } else {
            FUNC1(handle, (void *)item1);
        }
    } else {
        //Item was split
        FUNC0(item_size1 + item_size2 == expected_size, "Total item size is incorrect");
        for (int i = 0; i < item_size1; i++) {
            FUNC0(item1[i] == expected_data[i], "Head item data is invalid");
        }
        for (int i = 0; i < item_size2; i++) {
            FUNC0(item2[i] == expected_data[item_size1 + i], "Head item data is invalid");
        }
        //Return Items
        if (in_isr) {
            FUNC2(handle, (void *)item1, NULL);
            FUNC2(handle, (void *)item2, NULL);
        } else {
            FUNC1(handle, (void *)item1);
            FUNC1(handle, (void *)item2);
        }
    }
}