
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ read_ptr; scalar_t__ write_ptr; int item_size; } ;
typedef TYPE_1__ sdio_ringbuf_t ;


 int ringbuf_read_ptr ;
 int * sdio_ringbuf_offset_ptr (TYPE_1__*,int ,int ) ;

__attribute__((used)) static inline uint8_t* sdio_ringbuf_peek_front(sdio_ringbuf_t* buf)
{
    if (buf->read_ptr != buf->write_ptr) {
        return sdio_ringbuf_offset_ptr(buf, ringbuf_read_ptr, buf->item_size);
    } else {
        return ((void*)0);
    }
}
