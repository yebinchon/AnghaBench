
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ read_ptr; scalar_t__ write_ptr; } ;
typedef TYPE_1__ sdio_ringbuf_t ;



__attribute__((used)) static inline bool sdio_ringbuf_empty(sdio_ringbuf_t* buf)
{
    return (buf->read_ptr == buf->write_ptr? 1 : 0);
}
