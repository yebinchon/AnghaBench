
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int TickType_t ;
typedef int RingbufHandle_t ;
typedef scalar_t__ BaseType_t ;


 int TEST_ASSERT_MESSAGE (int,char*) ;
 scalar_t__ pdTRUE ;
 scalar_t__ xRingbufferSend (int ,void*,size_t,int ) ;
 scalar_t__ xRingbufferSendFromISR (int ,void*,size_t,int *) ;

__attribute__((used)) static void send_item_and_check(RingbufHandle_t handle, const uint8_t *item, size_t item_size, TickType_t ticks_to_wait, bool in_isr)
{
    BaseType_t ret;
    if (in_isr) {
        ret = xRingbufferSendFromISR(handle, (void *)item, item_size, ((void*)0));
    } else {
        ret = xRingbufferSend(handle, (void *)item, item_size, ticks_to_wait);
    }
    TEST_ASSERT_MESSAGE(ret == pdTRUE, "Failed to send item");
}
