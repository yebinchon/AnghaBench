
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * write_ptr; } ;
typedef TYPE_1__ sdio_ringbuf_t ;



__attribute__((used)) static inline uint8_t* sdio_ringbuf_peek_rear(sdio_ringbuf_t *buf)
{
    return buf->write_ptr;
}
