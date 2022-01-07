
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int w128_t ;
typedef int uint64_t ;
struct TYPE_4__ {scalar_t__ idx; } ;
typedef TYPE_1__ sfmt_t ;


 scalar_t__ SFMT_N32 ;
 int SFMT_N64 ;
 int assert (int) ;
 int gen_rand_array (TYPE_1__*,int *,int) ;
 int swap (int *,int) ;

void sfmt_fill_array64(sfmt_t * sfmt, uint64_t *array, int size) {
    assert(sfmt->idx == SFMT_N32);
    assert(size % 2 == 0);
    assert(size >= SFMT_N64);

    gen_rand_array(sfmt, (w128_t *)array, size / 2);
    sfmt->idx = SFMT_N32;




}
