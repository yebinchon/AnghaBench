
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_end; int buf_ptr; int bit_left; } ;
typedef TYPE_1__ PutBitContext ;



__attribute__((used)) static inline int put_bits_left(PutBitContext* s)
{
    return (s->buf_end - s->buf_ptr) * 8 - 32 + s->bit_left;
}
