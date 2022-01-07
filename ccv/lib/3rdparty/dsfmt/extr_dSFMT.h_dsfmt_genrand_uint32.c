
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ idx; TYPE_1__* status; } ;
typedef TYPE_2__ dsfmt_t ;
struct TYPE_5__ {int* u; } ;


 scalar_t__ DSFMT_N64 ;
 int dsfmt_gen_rand_all (TYPE_2__*) ;

__attribute__((used)) inline static uint32_t dsfmt_genrand_uint32(dsfmt_t *dsfmt) {
    uint32_t r;
    uint64_t *psfmt64 = &dsfmt->status[0].u[0];

    if (dsfmt->idx >= DSFMT_N64) {
 dsfmt_gen_rand_all(dsfmt);
 dsfmt->idx = 0;
    }
    r = psfmt64[dsfmt->idx++] & 0xffffffffU;
    return r;
}
