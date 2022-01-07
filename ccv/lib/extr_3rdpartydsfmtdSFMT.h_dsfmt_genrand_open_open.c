
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {scalar_t__ idx; TYPE_1__* status; } ;
typedef TYPE_2__ dsfmt_t ;
struct TYPE_5__ {double* d; } ;


 scalar_t__ DSFMT_N64 ;
 int dsfmt_gen_rand_all (TYPE_2__*) ;

__attribute__((used)) inline static double dsfmt_genrand_open_open(dsfmt_t *dsfmt) {
    double *dsfmt64 = &dsfmt->status[0].d[0];
    union {
 double d;
 uint64_t u;
    } r;

    if (dsfmt->idx >= DSFMT_N64) {
 dsfmt_gen_rand_all(dsfmt);
 dsfmt->idx = 0;
    }
    r.d = dsfmt64[dsfmt->idx++];
    r.u |= 1;
    return r.d - 1.0;
}
