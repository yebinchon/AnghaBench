
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_bitvec_t ;


 int * calloc (int,int) ;
 int hb_bitvec_add_bits (int *,int) ;

__attribute__((used)) static hb_bitvec_t* hb_bitvec_new(int size)
{
    hb_bitvec_t *bv = calloc(sizeof(hb_bitvec_t), 1);
    hb_bitvec_add_bits(bv, size);
    return bv;
}
