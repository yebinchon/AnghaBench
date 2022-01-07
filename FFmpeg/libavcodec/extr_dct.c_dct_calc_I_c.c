
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int (* rdft_calc ) (TYPE_2__*,float*) ;} ;
struct TYPE_6__ {int nbits; TYPE_2__ rdft; } ;
typedef float FFTSample ;
typedef TYPE_1__ DCTContext ;


 float COS (TYPE_1__*,int,int) ;
 float SIN (TYPE_1__*,int,int) ;
 int stub1 (TYPE_2__*,float*) ;

__attribute__((used)) static void dct_calc_I_c(DCTContext *ctx, FFTSample *data)
{
    int n = 1 << ctx->nbits;
    int i;
    float next = -0.5f * (data[0] - data[n]);

    for (i = 0; i < n / 2; i++) {
        float tmp1 = data[i];
        float tmp2 = data[n - i];
        float s = SIN(ctx, n, 2 * i);
        float c = COS(ctx, n, 2 * i);

        c *= tmp1 - tmp2;
        s *= tmp1 - tmp2;

        next += c;

        tmp1 = (tmp1 + tmp2) * 0.5f;
        data[i] = tmp1 - s;
        data[n - i] = tmp1 + s;
    }

    ctx->rdft.rdft_calc(&ctx->rdft, data);
    data[n] = data[1];
    data[1] = next;

    for (i = 3; i <= n; i += 2)
        data[i] = data[i - 2] - data[i];
}
