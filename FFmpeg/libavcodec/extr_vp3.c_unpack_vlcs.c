
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_6__ {int dc; } ;
typedef TYPE_1__ Vp3Fragment ;
struct TYPE_7__ {int** num_coded_frags; int*** dct_tokens; int** coded_fragment_list; int avctx; TYPE_1__* all_fragments; } ;
typedef TYPE_2__ Vp3DecodeContext ;
struct TYPE_8__ {int table; } ;
typedef TYPE_3__ VLC ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int INT_MAX ;
 int TOKEN_COEFF (int) ;
 int TOKEN_EOB (int) ;
 int TOKEN_ZERO_RUN (int,int) ;
 int * VLC_TYPE (int ) ;
 int av_log (int ,int ,char*,...) ;
 scalar_t__ get_bits_left (int *) ;
 int get_coeff (int *,int,int*) ;
 int get_eob_run (int *,int) ;
 int get_vlc2 (int *,int *,int,int) ;
 int * vlc_table ;

__attribute__((used)) static int unpack_vlcs(Vp3DecodeContext *s, GetBitContext *gb,
                       VLC *table, int coeff_index,
                       int plane,
                       int eob_run)
{
    int i, j = 0;
    int token;
    int zero_run = 0;
    int16_t coeff = 0;
    int blocks_ended;
    int coeff_i = 0;
    int num_coeffs = s->num_coded_frags[plane][coeff_index];
    int16_t *dct_tokens = s->dct_tokens[plane][coeff_index];


    int *coded_fragment_list = s->coded_fragment_list[plane];
    Vp3Fragment *all_fragments = s->all_fragments;
    VLC_TYPE(*vlc_table)[2] = table->table;

    if (num_coeffs < 0) {
        av_log(s->avctx, AV_LOG_ERROR,
               "Invalid number of coefficients at level %d\n", coeff_index);
        return AVERROR_INVALIDDATA;
    }

    if (eob_run > num_coeffs) {
        coeff_i =
        blocks_ended = num_coeffs;
        eob_run -= num_coeffs;
    } else {
        coeff_i =
        blocks_ended = eob_run;
        eob_run = 0;
    }


    if (blocks_ended)
        dct_tokens[j++] = blocks_ended << 2;

    while (coeff_i < num_coeffs && get_bits_left(gb) > 0) {

        token = get_vlc2(gb, vlc_table, 11, 3);

        if ((unsigned) token <= 6U) {
            eob_run = get_eob_run(gb, token);
            if (!eob_run)
                eob_run = INT_MAX;



            if (eob_run > num_coeffs - coeff_i) {
                dct_tokens[j++] = TOKEN_EOB(num_coeffs - coeff_i);
                blocks_ended += num_coeffs - coeff_i;
                eob_run -= num_coeffs - coeff_i;
                coeff_i = num_coeffs;
            } else {
                dct_tokens[j++] = TOKEN_EOB(eob_run);
                blocks_ended += eob_run;
                coeff_i += eob_run;
                eob_run = 0;
            }
        } else if (token >= 0) {
            zero_run = get_coeff(gb, token, &coeff);

            if (zero_run) {
                dct_tokens[j++] = TOKEN_ZERO_RUN(coeff, zero_run);
            } else {




                if (!coeff_index)
                    all_fragments[coded_fragment_list[coeff_i]].dc = coeff;

                dct_tokens[j++] = TOKEN_COEFF(coeff);
            }

            if (coeff_index + zero_run > 64) {
                av_log(s->avctx, AV_LOG_DEBUG,
                       "Invalid zero run of %d with %d coeffs left\n",
                       zero_run, 64 - coeff_index);
                zero_run = 64 - coeff_index;
            }



            for (i = coeff_index + 1; i <= coeff_index + zero_run; i++)
                s->num_coded_frags[plane][i]--;
            coeff_i++;
        } else {
            av_log(s->avctx, AV_LOG_ERROR, "Invalid token %d\n", token);
            return -1;
        }
    }

    if (blocks_ended > s->num_coded_frags[plane][coeff_index])
        av_log(s->avctx, AV_LOG_ERROR, "More blocks ended than coded!\n");



    if (blocks_ended)
        for (i = coeff_index + 1; i < 64; i++)
            s->num_coded_frags[plane][i] -= blocks_ended;


    if (plane < 2)
        s->dct_tokens[plane + 1][coeff_index] = dct_tokens + j;
    else if (coeff_index < 63)
        s->dct_tokens[0][coeff_index + 1] = dct_tokens + j;

    return eob_run;
}
