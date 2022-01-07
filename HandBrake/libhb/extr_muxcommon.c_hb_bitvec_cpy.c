
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int size; int vec; } ;
typedef TYPE_1__ hb_bitvec_t ;


 int hb_bitvec_add_bits (TYPE_1__*,int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int hb_bitvec_cpy(hb_bitvec_t *bv1, hb_bitvec_t *bv2)
{
    if (bv1->size < bv2->size)
    {
        int result = hb_bitvec_add_bits(bv1, bv2->size - bv1->size);
        if (result < 0)
            return result;
    }

    int words = (bv1->size + 31) >> 5;
    memcpy(bv1->vec, bv2->vec, words * sizeof(uint32_t));

    return 0;
}
