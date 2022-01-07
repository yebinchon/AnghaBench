
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef enum dirac_subband { ____Placeholder_dirac_subband } dirac_subband ;
struct TYPE_20__ {scalar_t__ buffer; } ;
struct TYPE_19__ {int (* execute ) (TYPE_4__*,int ,TYPE_2__**,int*,int,int) ;} ;
struct TYPE_18__ {int wavelet_depth; scalar_t__ is_arith; TYPE_1__* plane; TYPE_9__ gb; TYPE_4__* avctx; } ;
struct TYPE_17__ {int length; int quant; scalar_t__ coeff_data; } ;
struct TYPE_16__ {TYPE_2__*** band; } ;
typedef TYPE_2__ SubBand ;
typedef TYPE_3__ DiracContext ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int DIRAC_MAX_QUANT_INDEX ;
 int FFMAX (int,int ) ;
 int MAX_DWT_LEVELS ;
 int align_get_bits (TYPE_9__*) ;
 int av_log (TYPE_4__*,int ,char*,int) ;
 int decode_subband_arith ;
 int decode_subband_golomb ;
 int get_bits_count (TYPE_9__*) ;
 int get_bits_left (TYPE_9__*) ;
 void* get_interleaved_ue_golomb (TYPE_9__*) ;
 int skip_bits_long (TYPE_9__*,int) ;
 int stub1 (TYPE_4__*,int ,TYPE_2__**,int*,int,int) ;
 int stub2 (TYPE_4__*,int ,TYPE_2__**,int*,int,int) ;

__attribute__((used)) static int decode_component(DiracContext *s, int comp)
{
    AVCodecContext *avctx = s->avctx;
    SubBand *bands[3*MAX_DWT_LEVELS+1];
    enum dirac_subband orientation;
    int level, num_bands = 0;
    int ret[3*MAX_DWT_LEVELS+1];
    int i;
    int damaged_count = 0;


    for (level = 0; level < s->wavelet_depth; level++) {
        for (orientation = !!level; orientation < 4; orientation++) {
            SubBand *b = &s->plane[comp].band[level][orientation];
            bands[num_bands++] = b;

            align_get_bits(&s->gb);

            b->length = get_interleaved_ue_golomb(&s->gb);
            if (b->length) {
                b->quant = get_interleaved_ue_golomb(&s->gb);
                if (b->quant > (DIRAC_MAX_QUANT_INDEX - 1)) {
                    av_log(s->avctx, AV_LOG_ERROR, "Unsupported quant %d\n", b->quant);
                    b->quant = 0;
                    return AVERROR_INVALIDDATA;
                }
                align_get_bits(&s->gb);
                b->coeff_data = s->gb.buffer + get_bits_count(&s->gb)/8;
                if (b->length > FFMAX(get_bits_left(&s->gb)/8, 0)) {
                    b->length = FFMAX(get_bits_left(&s->gb)/8, 0);
                    damaged_count ++;
                }
                skip_bits_long(&s->gb, b->length*8);
            }
        }

        if (s->is_arith)
            avctx->execute(avctx, decode_subband_arith, &s->plane[comp].band[level][!!level],
                           ret + 3*level + !!level, 4-!!level, sizeof(SubBand));
    }

    if (!s->is_arith)
        avctx->execute(avctx, decode_subband_golomb, bands, ret, num_bands, sizeof(SubBand*));

    for (i = 0; i < s->wavelet_depth * 3 + 1; i++) {
        if (ret[i] < 0)
            damaged_count++;
    }
    if (damaged_count > (s->wavelet_depth * 3 + 1) /2)
        return AVERROR_INVALIDDATA;

    return 0;
}
