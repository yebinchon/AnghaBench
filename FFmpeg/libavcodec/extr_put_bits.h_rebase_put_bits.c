
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int size_in_bits; int * buf; int * buf_ptr; int * buf_end; } ;
typedef TYPE_1__ PutBitContext ;


 int av_assert0 (int) ;

__attribute__((used)) static inline void rebase_put_bits(PutBitContext *s, uint8_t *buffer,
                                   int buffer_size)
{
    av_assert0(8*buffer_size > s->size_in_bits);

    s->buf_end = buffer + buffer_size;
    s->buf_ptr = buffer + (s->buf_ptr - s->buf);
    s->buf = buffer;
    s->size_in_bits = 8 * buffer_size;
}
