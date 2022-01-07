
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BaseType_t ;


 scalar_t__ ISR_ITERATIONS ;
 size_t NO_OF_RB_TYPES ;
 size_t RINGBUF_TYPE_ALLOWSPLIT ;
 size_t RINGBUF_TYPE_BYTEBUF ;
 size_t RINGBUF_TYPE_NOSPLIT ;
 int SMALL_ITEM_SIZE ;
 int TIMER_0 ;
 int TIMER_GROUP_0 ;
 size_t buf_type ;
 int * buffer_handles ;
 int done_sem ;
 scalar_t__ iterations ;
 scalar_t__ pdFALSE ;
 scalar_t__ pdTRUE ;
 int portYIELD_FROM_ISR () ;
 int receive_check_and_return_item_allow_split (int ,void*,int ,int ,int) ;
 int receive_check_and_return_item_byte_buffer (int ,void*,int ,int ,int) ;
 int receive_check_and_return_item_no_split (int ,void*,int ,int ,int) ;
 int send_item_and_check (int ,void*,int ,int ,int) ;
 scalar_t__ small_item ;
 int timer_group_enable_alarm_in_isr (int ,int ) ;
 int timer_group_intr_clr_in_isr (int ,int ) ;
 int xPortGetCoreID () ;
 int xSemaphoreGiveFromISR (int ,scalar_t__*) ;

__attribute__((used)) static void ringbuffer_isr(void *arg)
{

    timer_group_intr_clr_in_isr(TIMER_GROUP_0, TIMER_0);
    timer_group_enable_alarm_in_isr(TIMER_GROUP_0, xPortGetCoreID());


    if (buf_type < NO_OF_RB_TYPES) {
        send_item_and_check(buffer_handles[buf_type], (void *)small_item, SMALL_ITEM_SIZE, 0, 1);
    }


    if (buf_type == RINGBUF_TYPE_NOSPLIT) {

        receive_check_and_return_item_no_split(buffer_handles[buf_type], (void *)small_item, SMALL_ITEM_SIZE, 0, 1);
        buf_type++;
    } else if (buf_type == RINGBUF_TYPE_ALLOWSPLIT) {

        receive_check_and_return_item_allow_split(buffer_handles[buf_type], (void *)small_item, SMALL_ITEM_SIZE, 0, 1);
        buf_type++;
    } else if (buf_type == RINGBUF_TYPE_BYTEBUF) {

        receive_check_and_return_item_byte_buffer(buffer_handles[buf_type], (void *)small_item, SMALL_ITEM_SIZE, 0, 1);
        buf_type++;
    } else if (buf_type == NO_OF_RB_TYPES) {

        if (iterations < ISR_ITERATIONS) {
            iterations++;
            buf_type = 0;
            return;
        } else {

            BaseType_t task_woken = pdFALSE;
            xSemaphoreGiveFromISR(done_sem, &task_woken);
            if (task_woken == pdTRUE) {
                buf_type++;
                portYIELD_FROM_ISR();
            }
        }
    }
}
