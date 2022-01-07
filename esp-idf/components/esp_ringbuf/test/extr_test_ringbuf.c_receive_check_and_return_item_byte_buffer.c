
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const uint8_t ;
typedef int TickType_t ;
typedef int RingbufHandle_t ;


 int TEST_ASSERT_MESSAGE (int,char*) ;
 int vRingbufferReturnItem (int ,void*) ;
 int vRingbufferReturnItemFromISR (int ,void*,int *) ;
 scalar_t__ xRingbufferReceiveUpTo (int ,size_t*,int ,size_t) ;
 scalar_t__ xRingbufferReceiveUpToFromISR (int ,size_t*,size_t) ;

__attribute__((used)) static void receive_check_and_return_item_byte_buffer(RingbufHandle_t handle, const uint8_t *expected_data, size_t expected_size, TickType_t ticks_to_wait, bool in_isr)
{

    size_t item_size;
    uint8_t *item;
    if (in_isr) {
        item = (uint8_t *)xRingbufferReceiveUpToFromISR(handle, &item_size, expected_size);
    } else {
        item = (uint8_t *)xRingbufferReceiveUpTo(handle, &item_size, ticks_to_wait, expected_size);
    }
    TEST_ASSERT_MESSAGE(item != ((void*)0), "Failed to receive item");


    for (int i = 0; i < item_size; i++) {
        TEST_ASSERT_MESSAGE(item[i] == expected_data[i], "Item data is invalid");
    }

    if (in_isr) {
        vRingbufferReturnItemFromISR(handle, (void *)item, ((void*)0));
    } else {
        vRingbufferReturnItem(handle, (void *)item);
    }


    if (item_size < expected_size) {

        size_t item_size2;
        uint8_t *item2;
        if (in_isr) {
            item2 = (uint8_t *)xRingbufferReceiveUpToFromISR(handle, &item_size2, expected_size - item_size);
        } else {
            item2 = (uint8_t *)xRingbufferReceiveUpTo(handle, &item_size2, ticks_to_wait, expected_size - item_size);
        }

        TEST_ASSERT_MESSAGE(item2 != ((void*)0), "Failed to receive item");
        TEST_ASSERT_MESSAGE(item_size + item_size2 == expected_size, "Total item size is incorrect");
        for (int i = 0; i < item_size2; i++) {
            TEST_ASSERT_MESSAGE(item2[i] == expected_data[item_size + i], "Item data is invalid");
        }
        if (in_isr) {
            vRingbufferReturnItemFromISR(handle, (void *)item2, ((void*)0));
        } else {
            vRingbufferReturnItem(handle, (void *)item2);
        }
    } else {
        TEST_ASSERT_MESSAGE(item_size == expected_size, "Item size is incorrect");
    }
}
