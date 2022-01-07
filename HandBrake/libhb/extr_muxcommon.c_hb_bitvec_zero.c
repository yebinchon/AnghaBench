
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int size; int vec; } ;
typedef TYPE_1__ hb_bitvec_t ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void hb_bitvec_zero(hb_bitvec_t *bv)
{
    int words = (bv->size + 31) >> 5;
    memset(bv->vec, 0, words * sizeof(uint32_t));
}
