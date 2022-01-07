
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * p; } ;
typedef TYPE_1__ AVBlowfish ;


 int AV_BF_ROUNDS ;
 int F (int ,int ,int ) ;

void av_blowfish_crypt_ecb(AVBlowfish *ctx, uint32_t *xl, uint32_t *xr,
                           int decrypt)
{
    uint32_t Xl, Xr;
    int i;

    Xl = *xl;
    Xr = *xr;

    if (decrypt) {
        Xl ^= ctx->p[AV_BF_ROUNDS + 1];
        for (i = AV_BF_ROUNDS; i > 0; i-=2) {
            F(Xl, Xr, ctx->p[i ]);
            F(Xr, Xl, ctx->p[i-1]);
        }

        Xr ^= ctx->p[0];
    } else {
        Xl ^= ctx->p[0];
        for (i = 1; i < AV_BF_ROUNDS+1; i+=2){
            F(Xl, Xr, ctx->p[i ]);
            F(Xr, Xl, ctx->p[i+1]);
        }

        Xr ^= ctx->p[AV_BF_ROUNDS + 1];
    }

    *xl = Xr;
    *xr = Xl;
}
