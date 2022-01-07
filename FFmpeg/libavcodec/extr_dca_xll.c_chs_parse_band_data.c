
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_8__ {int* adapt_pred_order; int highest_pred_order; int** msb_sample_buffer; int lsb_section_size; scalar_t__* nscalablelsbs; scalar_t__* lsb_sample_buffer; } ;
struct TYPE_7__ {int nchannels; int* bitalloc_hybrid_linear; int nabits; int* bitalloc_part_a; int* nsamples_part_a; int* bitalloc_part_b; int ** deci_history; void** rice_code_flag; void* seg_common; TYPE_3__* bands; } ;
struct TYPE_6__ {int nsegsamples; int nsegsamples_log2; int avctx; int gb; } ;
typedef TYPE_1__ DCAXllDecoder ;
typedef TYPE_2__ DCAXllChSet ;
typedef TYPE_3__ DCAXllBand ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int DCA_XLL_DECI_HISTORY_MAX ;
 int av_log (int ,int ,char*) ;
 scalar_t__ ff_dca_seek_bits (int *,int) ;
 int get_array (int *,scalar_t__,int,scalar_t__) ;
 int get_bits (int *,int) ;
 void* get_bits1 (int *) ;
 scalar_t__ get_bits_left (int *) ;
 int get_linear (int *,int) ;
 int get_linear_array (int *,int*,int,int) ;
 int get_rice (int *,int) ;
 int get_rice_array (int *,int*,int,int) ;
 int get_sbits_long (int *,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int chs_parse_band_data(DCAXllDecoder *s, DCAXllChSet *c, int band, int seg, int band_data_end)
{
    DCAXllBand *b = &c->bands[band];
    int i, j, k;


    if (!(seg && get_bits1(&s->gb))) {



        c->seg_common = get_bits1(&s->gb);


        k = c->seg_common ? 1 : c->nchannels;


        for (i = 0; i < k; i++) {


            c->rice_code_flag[i] = get_bits1(&s->gb);


            if (!c->seg_common && c->rice_code_flag[i] && get_bits1(&s->gb))

                c->bitalloc_hybrid_linear[i] = get_bits(&s->gb, c->nabits) + 1;
            else

                c->bitalloc_hybrid_linear[i] = 0;
        }


        for (i = 0; i < k; i++) {
            if (seg == 0) {

                c->bitalloc_part_a[i] = get_bits(&s->gb, c->nabits);


                if (!c->rice_code_flag[i] && c->bitalloc_part_a[i])
                    c->bitalloc_part_a[i]++;

                if (!c->seg_common)
                    c->nsamples_part_a[i] = b->adapt_pred_order[i];
                else
                    c->nsamples_part_a[i] = b->highest_pred_order;
            } else {
                c->bitalloc_part_a[i] = 0;
                c->nsamples_part_a[i] = 0;
            }


            c->bitalloc_part_b[i] = get_bits(&s->gb, c->nabits);


            if (!c->rice_code_flag[i] && c->bitalloc_part_b[i])
                c->bitalloc_part_b[i]++;
        }
    }


    for (i = 0; i < c->nchannels; i++) {
        int32_t *part_a, *part_b;
        int nsamples_part_b;


        k = c->seg_common ? 0 : i;


        part_a = b->msb_sample_buffer[i] + seg * s->nsegsamples;
        part_b = part_a + c->nsamples_part_a[k];
        nsamples_part_b = s->nsegsamples - c->nsamples_part_a[k];

        if (get_bits_left(&s->gb) < 0)
            return AVERROR_INVALIDDATA;

        if (!c->rice_code_flag[k]) {


            get_linear_array(&s->gb, part_a, c->nsamples_part_a[k],
                             c->bitalloc_part_a[k]);


            get_linear_array(&s->gb, part_b, nsamples_part_b,
                             c->bitalloc_part_b[k]);
        } else {


            get_rice_array(&s->gb, part_a, c->nsamples_part_a[k],
                           c->bitalloc_part_a[k]);

            if (c->bitalloc_hybrid_linear[k]) {


                int nisosamples = get_bits(&s->gb, s->nsegsamples_log2);


                memset(part_b, 0, sizeof(*part_b) * nsamples_part_b);


                for (j = 0; j < nisosamples; j++) {
                    int loc = get_bits(&s->gb, s->nsegsamples_log2);
                    if (loc >= nsamples_part_b) {
                        av_log(s->avctx, AV_LOG_ERROR, "Invalid isolated sample location\n");
                        return AVERROR_INVALIDDATA;
                    }
                    part_b[loc] = -1;
                }


                for (j = 0; j < nsamples_part_b; j++) {
                    if (part_b[j])
                        part_b[j] = get_linear(&s->gb, c->bitalloc_hybrid_linear[k]);
                    else
                        part_b[j] = get_rice(&s->gb, c->bitalloc_part_b[k]);
                }
            } else {


                get_rice_array(&s->gb, part_b, nsamples_part_b, c->bitalloc_part_b[k]);
            }
        }
    }


    if (seg == 0 && band == 1) {
        int nbits = get_bits(&s->gb, 5) + 1;
        for (i = 0; i < c->nchannels; i++)
            for (j = 1; j < DCA_XLL_DECI_HISTORY_MAX; j++)
                c->deci_history[i][j] = get_sbits_long(&s->gb, nbits);
    }


    if (b->lsb_section_size) {

        if (ff_dca_seek_bits(&s->gb, band_data_end - b->lsb_section_size * 8)) {
            av_log(s->avctx, AV_LOG_ERROR, "Read past end of XLL band data\n");
            return AVERROR_INVALIDDATA;
        }


        for (i = 0; i < c->nchannels; i++) {
            if (b->nscalablelsbs[i]) {
                get_array(&s->gb,
                          b->lsb_sample_buffer[i] + seg * s->nsegsamples,
                          s->nsegsamples, b->nscalablelsbs[i]);
            }
        }
    }


    if (ff_dca_seek_bits(&s->gb, band_data_end)) {
        av_log(s->avctx, AV_LOG_ERROR, "Read past end of XLL band data\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
