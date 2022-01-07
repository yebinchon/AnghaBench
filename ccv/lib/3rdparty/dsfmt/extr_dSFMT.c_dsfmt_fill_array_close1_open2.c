
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dw128_t ;
typedef int dsfmt_t ;


 int DSFMT_N64 ;
 int assert (int) ;
 int gen_rand_array_c1o2 (int *,int *,int) ;

void dsfmt_fill_array_close1_open2(dsfmt_t *dsfmt, double array[], int size) {
    assert(size % 2 == 0);
    assert(size >= DSFMT_N64);
    gen_rand_array_c1o2(dsfmt, (dw128_t *)array, size / 2);
}
