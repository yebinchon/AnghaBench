
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int size; int* vec; } ;
typedef TYPE_1__ hb_bitvec_t ;



__attribute__((used)) static int hb_bitvec_bit(hb_bitvec_t *bv, int n)
{
    if (n >= bv->size)
        return 0;

    int word = n >> 5;
    uint32_t bit = 1 << (n & 0x1F);
    return !!(bv->vec[word] & bit);
}
