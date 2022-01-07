
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
 scalar_t__ xRingbufferReceive (int ,size_t*,int ) ;
 scalar_t__ xRingbufferReceiveFromISR (int ,size_t*) ;

__attribute__((used)) static void receive_check_and_return_item_no_split(RingbufHandle_t handle, const uint8_t *expected_data, size_t expected_size, TickType_t ticks_to_wait, bool in_isr)
{

    size_t item_size;
    uint8_t *item;
    if (in_isr) {
        item = (uint8_t *)xRingbufferReceiveFromISR(handle, &item_size);
    } else {
        item = (uint8_t *)xRingbufferReceive(handle, &item_size, ticks_to_wait);
    }
    TEST_ASSERT_MESSAGE(item != ((void*)0), "Failed to receive item");
    TEST_ASSERT_MESSAGE(item_size == expected_size, "Item size is incorrect");

    for (int i = 0; i < item_size; i++) {
        TEST_ASSERT_MESSAGE(item[i] == expected_data[i], "Item data is invalid");
    }

    if (in_isr) {
        vRingbufferReturnItemFromISR(handle, (void *)item, ((void*)0));
    } else {
        vRingbufferReturnItem(handle, (void *)item);
    }

}
