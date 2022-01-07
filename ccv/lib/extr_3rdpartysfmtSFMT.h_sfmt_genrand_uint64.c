
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_6__ {int idx; TYPE_1__* state; } ;
typedef TYPE_2__ sfmt_t ;
struct TYPE_5__ {int* u; int* u64; } ;


 int SFMT_N32 ;
 int assert (int) ;
 int sfmt_gen_rand_all (TYPE_2__*) ;

__attribute__((used)) inline static uint64_t sfmt_genrand_uint64(sfmt_t * sfmt) {




    uint64_t r;

    uint64_t * psfmt64 = &sfmt->state[0].u64[0];
    assert(sfmt->idx % 2 == 0);

    if (sfmt->idx >= SFMT_N32) {
 sfmt_gen_rand_all(sfmt);
 sfmt->idx = 0;
    }






    r = psfmt64[sfmt->idx / 2];
    sfmt->idx += 2;
    return r;

}
