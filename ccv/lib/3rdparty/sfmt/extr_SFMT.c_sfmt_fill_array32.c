
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int w128_t ;
typedef int uint32_t ;
struct TYPE_4__ {int idx; } ;
typedef TYPE_1__ sfmt_t ;


 int SFMT_N32 ;
 int assert (int) ;
 int gen_rand_array (TYPE_1__*,int *,int) ;

void sfmt_fill_array32(sfmt_t * sfmt, uint32_t *array, int size) {
    assert(sfmt->idx == SFMT_N32);
    assert(size % 4 == 0);
    assert(size >= SFMT_N32);

    gen_rand_array(sfmt, (w128_t *)array, size / 4);
    sfmt->idx = SFMT_N32;
}
