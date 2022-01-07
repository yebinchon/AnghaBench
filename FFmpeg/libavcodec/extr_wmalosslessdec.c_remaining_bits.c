
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_bit_size; } ;
typedef TYPE_1__ WmallDecodeCtx ;
typedef int GetBitContext ;


 int get_bits_count (int *) ;

__attribute__((used)) static int remaining_bits(WmallDecodeCtx *s, GetBitContext *gb)
{
    return s->buf_bit_size - get_bits_count(gb);
}
