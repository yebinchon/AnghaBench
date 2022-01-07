
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int idx; TYPE_1__* state; } ;
typedef TYPE_2__ sfmt_t ;
struct TYPE_5__ {int* u; } ;


 int SFMT_N32 ;
 size_t idxof (int) ;
 int period_certification (TYPE_2__*) ;

void sfmt_init_gen_rand(sfmt_t * sfmt, uint32_t seed) {
    int i;

    uint32_t *psfmt32 = &sfmt->state[0].u[0];

    psfmt32[idxof(0)] = seed;
    for (i = 1; i < SFMT_N32; i++) {
 psfmt32[idxof(i)] = 1812433253UL * (psfmt32[idxof(i - 1)]
         ^ (psfmt32[idxof(i - 1)] >> 30))
     + i;
    }
    sfmt->idx = SFMT_N32;
    period_certification(sfmt);
}
