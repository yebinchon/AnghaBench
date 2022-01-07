
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {size_t data_size; int j; scalar_t__ x; int diff; scalar_t__ t; scalar_t__ err; scalar_t__ const* in_buf; } ;
typedef TYPE_1__ ElsDecCtx ;


 scalar_t__ AV_RB16 (scalar_t__ const*) ;
 scalar_t__ AV_RB24 (scalar_t__ const*) ;
 int ELS_JOTS_PER_BYTE ;
 scalar_t__ ELS_MAX ;
 int FFMIN (scalar_t__,scalar_t__) ;
 scalar_t__* els_exp_tab ;

void ff_els_decoder_init(ElsDecCtx *ctx, const uint8_t *in, size_t data_size)
{
    int nbytes;


    if (data_size >= 3) {
        ctx->x = AV_RB24(in);
        nbytes = 3;
    } else if (data_size == 2) {
        ctx->x = AV_RB16(in);
        nbytes = 2;
    } else {
        ctx->x = *in;
        nbytes = 1;
    }

    ctx->in_buf = in + nbytes;
    ctx->data_size = data_size - nbytes;
    ctx->err = 0;
    ctx->j = ELS_JOTS_PER_BYTE;
    ctx->t = ELS_MAX;
    ctx->diff = FFMIN(ELS_MAX - ctx->x,
                           ELS_MAX - els_exp_tab[ELS_JOTS_PER_BYTE * 4 - 1]);
}
