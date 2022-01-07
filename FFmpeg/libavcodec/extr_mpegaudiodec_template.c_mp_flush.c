
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dither_state; scalar_t__ last_buf_size; int mdct_buf; int synth_buf; } ;
typedef TYPE_1__ MPADecodeContext ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void mp_flush(MPADecodeContext *ctx)
{
    memset(ctx->synth_buf, 0, sizeof(ctx->synth_buf));
    memset(ctx->mdct_buf, 0, sizeof(ctx->mdct_buf));
    ctx->last_buf_size = 0;
    ctx->dither_state = 0;
}
