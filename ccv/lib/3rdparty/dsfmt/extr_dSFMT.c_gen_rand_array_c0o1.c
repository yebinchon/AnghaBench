
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* dw128_t ;
struct TYPE_3__ {void** status; } ;
typedef TYPE_1__ dsfmt_t ;


 size_t DSFMT_N ;
 size_t DSFMT_POS1 ;
 int convert_c0o1 (void**) ;
 int do_recursion (void**,void**,void**,void**) ;

__attribute__((used)) inline static void gen_rand_array_c0o1(dsfmt_t *dsfmt, dw128_t *array,
           int size) {
    int i, j;
    dw128_t lung;

    lung = dsfmt->status[DSFMT_N];
    do_recursion(&array[0], &dsfmt->status[0], &dsfmt->status[DSFMT_POS1],
   &lung);
    for (i = 1; i < DSFMT_N - DSFMT_POS1; i++) {
 do_recursion(&array[i], &dsfmt->status[i],
       &dsfmt->status[i + DSFMT_POS1], &lung);
    }
    for (; i < DSFMT_N; i++) {
 do_recursion(&array[i], &dsfmt->status[i],
       &array[i + DSFMT_POS1 - DSFMT_N], &lung);
    }
    for (; i < size - DSFMT_N; i++) {
 do_recursion(&array[i], &array[i - DSFMT_N],
       &array[i + DSFMT_POS1 - DSFMT_N], &lung);
 convert_c0o1(&array[i - DSFMT_N]);
    }
    for (j = 0; j < 2 * DSFMT_N - size; j++) {
 dsfmt->status[j] = array[j + size - DSFMT_N];
    }
    for (; i < size; i++, j++) {
 do_recursion(&array[i], &array[i - DSFMT_N],
       &array[i + DSFMT_POS1 - DSFMT_N], &lung);
 dsfmt->status[j] = array[i];
 convert_c0o1(&array[i - DSFMT_N]);
    }
    for (i = size - DSFMT_N; i < size; i++) {
 convert_c0o1(&array[i]);
    }
    dsfmt->status[DSFMT_N] = lung;
}
