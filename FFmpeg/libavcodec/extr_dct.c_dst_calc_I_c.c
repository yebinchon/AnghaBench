
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* rdft_calc ) (TYPE_2__*,int*) ;} ;
struct TYPE_5__ {int nbits; TYPE_2__ rdft; } ;
typedef int FFTSample ;
typedef TYPE_1__ DCTContext ;


 float SIN (TYPE_1__*,int,int) ;
 int stub1 (TYPE_2__*,int*) ;

__attribute__((used)) static void dst_calc_I_c(DCTContext *ctx, FFTSample *data)
{
    int n = 1 << ctx->nbits;
    int i;

    data[0] = 0;
    for (i = 1; i < n / 2; i++) {
        float tmp1 = data[i ];
        float tmp2 = data[n - i];
        float s = SIN(ctx, n, 2 * i);

        s *= tmp1 + tmp2;
        tmp1 = (tmp1 - tmp2) * 0.5f;
        data[i] = s + tmp1;
        data[n - i] = s - tmp1;
    }

    data[n / 2] *= 2;
    ctx->rdft.rdft_calc(&ctx->rdft, data);

    data[0] *= 0.5f;

    for (i = 1; i < n - 2; i += 2) {
        data[i + 1] += data[i - 1];
        data[i] = -data[i + 2];
    }

    data[n - 1] = 0;
}
