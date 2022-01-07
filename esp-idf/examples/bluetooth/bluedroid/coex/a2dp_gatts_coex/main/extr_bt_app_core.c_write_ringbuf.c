
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int portTickType ;
typedef scalar_t__ BaseType_t ;


 scalar_t__ portMAX_DELAY ;
 int s_ringbuf_i2s ;
 scalar_t__ xRingbufferSend (int ,void*,size_t,int ) ;

size_t write_ringbuf(const uint8_t *data, size_t size)
{
    BaseType_t done = xRingbufferSend(s_ringbuf_i2s, (void *)data, size, (portTickType)portMAX_DELAY);
    if(done){
        return size;
    } else {
        return 0;
    }
}
