
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int size; int * vec; } ;
typedef TYPE_1__ hb_bitvec_t ;



__attribute__((used)) static int hb_bitvec_any(hb_bitvec_t *bv)
{
    uint32_t result = 0;;
    int ii;
    int words = (bv->size + 31) >> 5;
    for (ii = 0; ii < words; ii++)
        result |= bv->vec[ii];

    return !!result;
}
