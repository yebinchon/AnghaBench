
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {unsigned int nwrap; unsigned int* coeffs; unsigned int** decoded; int lpcqoffset; int blocksize; int gb; int avctx; } ;
typedef TYPE_1__ ShortenContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int FF_ARRAY_ELEMS (int**) ;
 int FN_QLPC ;
 int LPCQSIZE ;
 int LPCQUANT ;
 int av_log (int ,int ,char*,int) ;
 int** fixed_coeffs ;
 unsigned int get_sr_golomb_shorten (int *,int) ;
 int get_ur_golomb_shorten (int *,int ) ;

__attribute__((used)) static int decode_subframe_lpc(ShortenContext *s, int command, int channel,
                               int residual_size, int32_t coffset)
{
    int pred_order, sum, qshift, init_sum, i, j;
    const int *coeffs;

    if (command == FN_QLPC) {

        pred_order = get_ur_golomb_shorten(&s->gb, LPCQSIZE);
        if ((unsigned)pred_order > s->nwrap) {
            av_log(s->avctx, AV_LOG_ERROR, "invalid pred_order %d\n",
                   pred_order);
            return AVERROR(EINVAL);
        }

        for (i = 0; i < pred_order; i++)
            s->coeffs[i] = get_sr_golomb_shorten(&s->gb, LPCQUANT);
        coeffs = s->coeffs;

        qshift = LPCQUANT;
    } else {

        pred_order = command;
        if (pred_order >= FF_ARRAY_ELEMS(fixed_coeffs)) {
            av_log(s->avctx, AV_LOG_ERROR, "invalid pred_order %d\n",
                   pred_order);
            return AVERROR_INVALIDDATA;
        }
        coeffs = fixed_coeffs[pred_order];
        qshift = 0;
    }


    if (command == FN_QLPC && coffset)
        for (i = -pred_order; i < 0; i++)
            s->decoded[channel][i] -= (unsigned)coffset;


    init_sum = pred_order ? (command == FN_QLPC ? s->lpcqoffset : 0) : coffset;
    for (i = 0; i < s->blocksize; i++) {
        sum = init_sum;
        for (j = 0; j < pred_order; j++)
            sum += coeffs[j] * (unsigned)s->decoded[channel][i - j - 1];
        s->decoded[channel][i] = get_sr_golomb_shorten(&s->gb, residual_size) +
                                 (unsigned)(sum >> qshift);
    }


    if (command == FN_QLPC && coffset)
        for (i = 0; i < s->blocksize; i++)
            s->decoded[channel][i] += (unsigned)coffset;

    return 0;
}
