
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int w128_t ;
typedef int uint64_t ;
struct TYPE_4__ {int initialized; scalar_t__ idx; } ;
typedef TYPE_1__ sfmt_t ;


 scalar_t__ N32 ;
 int N64 ;
 int assert (int) ;
 int gen_rand_array (TYPE_1__*,int *,int) ;
 int swap (int *,int) ;

void fill_array64(sfmt_t *ctx, uint64_t *array, int size) {
    assert(ctx->initialized);
    assert(ctx->idx == N32);
    assert(size % 2 == 0);
    assert(size >= N64);

    gen_rand_array(ctx, (w128_t *)array, size / 2);
    ctx->idx = N32;




}
