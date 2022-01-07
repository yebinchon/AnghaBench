
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int int32_t ;
typedef int GetBitContext ;


 int get_bits1 (int *) ;
 unsigned int get_bits_left (int *) ;
 scalar_t__ get_bits_long (int *,unsigned int) ;
 unsigned int get_unary (int *,int ,int) ;

__attribute__((used)) static int32_t decode_rice(GetBitContext *gb, unsigned int k)
{
    int max = get_bits_left(gb) - k;
    unsigned q = get_unary(gb, 0, max);
    int r = k ? get_bits1(gb) : !(q & 1);

    if (k > 1) {
        q <<= (k - 1);
        q += get_bits_long(gb, k - 1);
    } else if (!k) {
        q >>= 1;
    }
    return r ? q : ~q;
}
