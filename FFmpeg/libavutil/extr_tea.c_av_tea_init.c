
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int rounds; int * key; } ;
typedef TYPE_1__ AVTEA ;


 int AV_RB32 (int const*) ;

void av_tea_init(AVTEA *ctx, const uint8_t key[16], int rounds)
{
    int i;

    for (i = 0; i < 4; i++)
        ctx->key[i] = AV_RB32(key + (i << 2));

    ctx->rounds = rounds;
}
