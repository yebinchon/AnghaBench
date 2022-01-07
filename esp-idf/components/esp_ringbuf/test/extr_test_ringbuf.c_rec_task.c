
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int buffer; } ;
typedef TYPE_1__ task_args_t ;
typedef int RingbufHandle_t ;


 int read_from_buffer (int ,int ,size_t) ;
 int tasks_done ;
 int vTaskDelete (int *) ;
 size_t xRingbufferGetMaxItemSize (int ) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void rec_task(void *args)
{
    RingbufHandle_t buffer = ((task_args_t *)args)->buffer;
    size_t max_rec_len = xRingbufferGetMaxItemSize(buffer);


    read_from_buffer(buffer, ((task_args_t *)args)->type, 1);

    read_from_buffer(buffer, ((task_args_t *)args)->type, max_rec_len/2);

    read_from_buffer(buffer, ((task_args_t *)args)->type, max_rec_len);

    xSemaphoreGive(tasks_done);
    vTaskDelete(((void*)0));
}
