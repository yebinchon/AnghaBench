
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int item_size; int read_ptr; int size; int free_ptr; int remain_cnt; } ;
typedef TYPE_1__ sdio_ringbuf_t ;
typedef scalar_t__ portBASE_TYPE ;


 int assert (int) ;
 scalar_t__ pdTRUE ;
 int ringbuf_free_ptr ;
 int * sdio_ringbuf_offset_ptr (TYPE_1__*,int ,int) ;
 scalar_t__ xSemaphoreGive (int ) ;

__attribute__((used)) static inline void sdio_ringbuf_return(sdio_ringbuf_t* buf, uint8_t *ptr)
{
    assert(sdio_ringbuf_offset_ptr(buf, ringbuf_free_ptr, buf->item_size) == ptr);
    int size = (buf->read_ptr + buf->size - buf->free_ptr)%buf->size;
    int count = size/buf->item_size;
    assert(count*buf->item_size==size);
    buf->free_ptr = buf->read_ptr;
    for(int i = 0; i < count; i++) {
        portBASE_TYPE ret = xSemaphoreGive(buf->remain_cnt);
        assert(ret == pdTRUE);
    }
}
