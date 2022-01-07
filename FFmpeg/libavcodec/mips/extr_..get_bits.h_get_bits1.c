
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int uint8_t ;
struct TYPE_5__ {unsigned int index; unsigned int* buffer; unsigned int size_in_bits_plus8; int bits_left; } ;
typedef TYPE_1__ GetBitContext ;


 unsigned int get_val (TYPE_1__*,int,int) ;
 int refill_64 (TYPE_1__*,int) ;

__attribute__((used)) static inline unsigned int get_bits1(GetBitContext *s)
{
    unsigned int index = s->index;
    uint8_t result = s->buffer[index >> 3];




    result <<= index & 7;
    result >>= 8 - 1;


    if (s->index < s->size_in_bits_plus8)

        index++;
    s->index = index;

    return result;

}
