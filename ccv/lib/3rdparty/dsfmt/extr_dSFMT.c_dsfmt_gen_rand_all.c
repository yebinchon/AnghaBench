
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dw128_t ;
struct TYPE_3__ {int * status; } ;
typedef TYPE_1__ dsfmt_t ;


 size_t DSFMT_N ;
 size_t DSFMT_POS1 ;
 int do_recursion (int *,int *,int *,int *) ;

void dsfmt_gen_rand_all(dsfmt_t *dsfmt) {
    int i;
    dw128_t lung;

    lung = dsfmt->status[DSFMT_N];
    do_recursion(&dsfmt->status[0], &dsfmt->status[0],
   &dsfmt->status[DSFMT_POS1], &lung);
    for (i = 1; i < DSFMT_N - DSFMT_POS1; i++) {
 do_recursion(&dsfmt->status[i], &dsfmt->status[i],
       &dsfmt->status[i + DSFMT_POS1], &lung);
    }
    for (; i < DSFMT_N; i++) {
 do_recursion(&dsfmt->status[i], &dsfmt->status[i],
       &dsfmt->status[i + DSFMT_POS1 - DSFMT_N], &lung);
    }
    dsfmt->status[DSFMT_N] = lung;
}
