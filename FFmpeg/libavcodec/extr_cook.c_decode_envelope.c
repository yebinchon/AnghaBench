
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int avctx; TYPE_1__* envelope_quant_index; int gb; } ;
struct TYPE_7__ {int total_subbands; int js_subband_start; } ;
struct TYPE_6__ {int bits; int table; } ;
typedef TYPE_2__ COOKSubpacket ;
typedef TYPE_3__ COOKContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*,int,int) ;
 int get_bits (int *,int) ;
 int get_vlc2 (int *,int ,int ,int) ;

__attribute__((used)) static int decode_envelope(COOKContext *q, COOKSubpacket *p,
                           int *quant_index_table)
{
    int i, j, vlc_index;

    quant_index_table[0] = get_bits(&q->gb, 6) - 6;

    for (i = 1; i < p->total_subbands; i++) {
        vlc_index = i;
        if (i >= p->js_subband_start * 2) {
            vlc_index -= p->js_subband_start;
        } else {
            vlc_index /= 2;
            if (vlc_index < 1)
                vlc_index = 1;
        }
        if (vlc_index > 13)
            vlc_index = 13;

        j = get_vlc2(&q->gb, q->envelope_quant_index[vlc_index - 1].table,
                     q->envelope_quant_index[vlc_index - 1].bits, 2);
        quant_index_table[i] = quant_index_table[i - 1] + j - 12;
        if (quant_index_table[i] > 63 || quant_index_table[i] < -63) {
            av_log(q->avctx, AV_LOG_ERROR,
                   "Invalid quantizer %d at position %d, outside [-63, 63] range\n",
                   quant_index_table[i], i);
            return AVERROR_INVALIDDATA;
        }
    }

    return 0;
}
