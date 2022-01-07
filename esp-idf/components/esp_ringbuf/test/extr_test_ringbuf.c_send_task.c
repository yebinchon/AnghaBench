
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buffer; } ;
typedef TYPE_1__ task_args_t ;
typedef int RingbufHandle_t ;


 int send_to_buffer (int ,size_t) ;
 int vTaskDelete (int *) ;
 size_t xRingbufferGetMaxItemSize (int ) ;

__attribute__((used)) static void send_task(void *args)
{
    RingbufHandle_t buffer = ((task_args_t *)args)->buffer;
    size_t max_item_len = xRingbufferGetMaxItemSize(buffer);


    send_to_buffer(buffer, 1);

    send_to_buffer(buffer, max_item_len/2);

    send_to_buffer(buffer, max_item_len);
    vTaskDelete(((void*)0));
}
