
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int idx; TYPE_1__* status; } ;
typedef TYPE_2__ dsfmt_t ;
struct TYPE_6__ {int* u32; } ;


 int DSFMT_N ;
 int DSFMT_N64 ;
 int dsfmt_mexp ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 size_t idxof (int) ;
 int initial_mask (TYPE_2__*) ;
 int period_certification (TYPE_2__*) ;
 int stderr ;

void dsfmt_chk_init_gen_rand(dsfmt_t *dsfmt, uint32_t seed, int mexp) {
    int i;
    uint32_t *psfmt;


    if (mexp != dsfmt_mexp) {
 fprintf(stderr, "DSFMT_MEXP doesn't match with dSFMT.c\n");
 exit(1);
    }
    psfmt = &dsfmt->status[0].u32[0];
    psfmt[idxof(0)] = seed;
    for (i = 1; i < (DSFMT_N + 1) * 4; i++) {
        psfmt[idxof(i)] = 1812433253UL
     * (psfmt[idxof(i - 1)] ^ (psfmt[idxof(i - 1)] >> 30)) + i;
    }
    initial_mask(dsfmt);
    period_certification(dsfmt);
    dsfmt->idx = DSFMT_N64;
}
