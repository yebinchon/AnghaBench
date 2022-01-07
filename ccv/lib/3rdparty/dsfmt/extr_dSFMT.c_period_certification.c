
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {TYPE_1__* status; } ;
typedef TYPE_2__ dsfmt_t ;
struct TYPE_4__ {int* u; } ;


 int DSFMT_FIX1 ;
 int DSFMT_FIX2 ;
 size_t DSFMT_N ;
 int DSFMT_PCV1 ;
 int DSFMT_PCV2 ;

__attribute__((used)) static void period_certification(dsfmt_t *dsfmt) {
    uint64_t pcv[2] = {DSFMT_PCV1, DSFMT_PCV2};
    uint64_t tmp[2];
    uint64_t inner;
    int i;

    int j;
    uint64_t work;


    tmp[0] = (dsfmt->status[DSFMT_N].u[0] ^ DSFMT_FIX1);
    tmp[1] = (dsfmt->status[DSFMT_N].u[1] ^ DSFMT_FIX2);

    inner = tmp[0] & pcv[0];
    inner ^= tmp[1] & pcv[1];
    for (i = 32; i > 0; i >>= 1) {
        inner ^= inner >> i;
    }
    inner &= 1;

    if (inner == 1) {
 return;
    }




    for (i = 1; i >= 0; i--) {
 work = 1;
 for (j = 0; j < 64; j++) {
     if ((work & pcv[i]) != 0) {
  dsfmt->status[DSFMT_N].u[i] ^= work;
  return;
     }
     work = work << 1;
 }
    }

    return;
}
