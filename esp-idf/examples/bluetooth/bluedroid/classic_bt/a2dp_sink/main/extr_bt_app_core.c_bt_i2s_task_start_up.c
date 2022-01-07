
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RINGBUF_TYPE_BYTEBUF ;
 int bt_i2s_task_handler ;
 scalar_t__ configMAX_PRIORITIES ;
 int s_bt_i2s_task_handle ;
 int * s_ringbuf_i2s ;
 int * xRingbufferCreate (int,int ) ;
 int xTaskCreate (int ,char*,int,int *,scalar_t__,int *) ;

void bt_i2s_task_start_up(void)
{
    s_ringbuf_i2s = xRingbufferCreate(8 * 1024, RINGBUF_TYPE_BYTEBUF);
    if(s_ringbuf_i2s == ((void*)0)){
        return;
    }

    xTaskCreate(bt_i2s_task_handler, "BtI2ST", 1024, ((void*)0), configMAX_PRIORITIES - 3, &s_bt_i2s_task_handle);
    return;
}
