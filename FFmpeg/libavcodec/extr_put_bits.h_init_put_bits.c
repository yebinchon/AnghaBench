
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int size_in_bits; int bit_left; scalar_t__ bit_buf; int * buf; int * buf_ptr; int * buf_end; } ;
typedef TYPE_1__ PutBitContext ;



__attribute__((used)) static inline void init_put_bits(PutBitContext *s, uint8_t *buffer,
                                 int buffer_size)
{
    if (buffer_size < 0) {
        buffer_size = 0;
        buffer = ((void*)0);
    }

    s->size_in_bits = 8 * buffer_size;
    s->buf = buffer;
    s->buf_end = s->buf + buffer_size;
    s->buf_ptr = s->buf;
    s->bit_left = 32;
    s->bit_buf = 0;
}
