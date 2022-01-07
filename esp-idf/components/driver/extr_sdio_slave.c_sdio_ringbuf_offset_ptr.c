
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int size; int * data; } ;
typedef TYPE_1__ sdio_ringbuf_t ;
typedef int sdio_ringbuf_pointer_t ;



__attribute__((used)) static inline uint8_t* sdio_ringbuf_offset_ptr(sdio_ringbuf_t *buf, sdio_ringbuf_pointer_t ptr, uint32_t offset)
{
    uint8_t *buf_ptr = (uint8_t*)*(uint32_t*)(((uint8_t*)buf)+ptr);
    uint8_t *offset_ptr=buf_ptr+offset;
    if (offset_ptr >= buf->data + buf->size) offset_ptr -= buf->size;
    return offset_ptr;
}
