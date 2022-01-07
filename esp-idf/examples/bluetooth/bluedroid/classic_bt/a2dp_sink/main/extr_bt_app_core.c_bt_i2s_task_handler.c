
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int portTickType ;


 int i2s_write (int ,int *,size_t,size_t*,scalar_t__) ;
 scalar_t__ portMAX_DELAY ;
 int s_ringbuf_i2s ;
 int vRingbufferReturnItem (int ,void*) ;
 scalar_t__ xRingbufferReceive (int ,size_t*,int ) ;

__attribute__((used)) static void bt_i2s_task_handler(void *arg)
{
    uint8_t *data = ((void*)0);
    size_t item_size = 0;
    size_t bytes_written = 0;

    for (;;) {
        data = (uint8_t *)xRingbufferReceive(s_ringbuf_i2s, &item_size, (portTickType)portMAX_DELAY);
        if (item_size != 0){
            i2s_write(0, data, item_size, &bytes_written, portMAX_DELAY);
            vRingbufferReturnItem(s_ringbuf_i2s,(void *)data);
        }
    }
}
