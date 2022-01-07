
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int table; } ;
struct TYPE_5__ {float*** time_samples; unsigned int* ch_pres; int gb; } ;
typedef TYPE_1__ DCALbrDecoder ;


 int DCA_LBR_TIME_SAMPLES ;
 int FFMIN (int,int) ;
 int av_assert0 (int ) ;
 scalar_t__ ensure_bits (int *,int) ;
 float* ff_dca_rsd_level_16 ;
 float* ff_dca_rsd_level_2a ;
 float* ff_dca_rsd_level_2b ;
 float* ff_dca_rsd_level_3 ;
 float* ff_dca_rsd_level_5 ;
 float* ff_dca_rsd_level_8 ;
 size_t** ff_dca_rsd_pack_3_in_7 ;
 int* ff_dca_rsd_pack_5_in_8 ;
 TYPE_4__ ff_dca_vlc_rsd ;
 size_t get_bits (int *,int) ;
 size_t get_bits1 (int *) ;
 int get_bits_left (int *) ;
 size_t get_vlc2 (int *,int ,int,int) ;
 float lbr_rand (TYPE_1__*,int) ;

__attribute__((used)) static void parse_ch(DCALbrDecoder *s, int ch, int sb, int quant_level, int flag)
{
    float *samples = s->time_samples[ch][sb];
    int i, j, code, nblocks, coding_method;

    if (ensure_bits(&s->gb, 20))
        return;

    coding_method = get_bits1(&s->gb);

    switch (quant_level) {
    case 1:
        nblocks = FFMIN(get_bits_left(&s->gb) / 8, DCA_LBR_TIME_SAMPLES / 8);
        for (i = 0; i < nblocks; i++, samples += 8) {
            code = get_bits(&s->gb, 8);
            for (j = 0; j < 8; j++)
                samples[j] = ff_dca_rsd_level_2a[(code >> j) & 1];
        }
        i = nblocks * 8;
        break;

    case 2:
        if (coding_method) {
            for (i = 0; i < DCA_LBR_TIME_SAMPLES && get_bits_left(&s->gb) >= 2; i++) {
                if (get_bits1(&s->gb))
                    samples[i] = ff_dca_rsd_level_2b[get_bits1(&s->gb)];
                else
                    samples[i] = 0;
            }
        } else {
            nblocks = FFMIN(get_bits_left(&s->gb) / 8, (DCA_LBR_TIME_SAMPLES + 4) / 5);
            for (i = 0; i < nblocks; i++, samples += 5) {
                code = ff_dca_rsd_pack_5_in_8[get_bits(&s->gb, 8)];
                for (j = 0; j < 5; j++)
                    samples[j] = ff_dca_rsd_level_3[(code >> j * 2) & 3];
            }
            i = nblocks * 5;
        }
        break;

    case 3:
        nblocks = FFMIN(get_bits_left(&s->gb) / 7, (DCA_LBR_TIME_SAMPLES + 2) / 3);
        for (i = 0; i < nblocks; i++, samples += 3) {
            code = get_bits(&s->gb, 7);
            for (j = 0; j < 3; j++)
                samples[j] = ff_dca_rsd_level_5[ff_dca_rsd_pack_3_in_7[code][j]];
        }
        i = nblocks * 3;
        break;

    case 4:
        for (i = 0; i < DCA_LBR_TIME_SAMPLES && get_bits_left(&s->gb) >= 6; i++)
            samples[i] = ff_dca_rsd_level_8[get_vlc2(&s->gb, ff_dca_vlc_rsd.table, 6, 1)];
        break;

    case 5:
        nblocks = FFMIN(get_bits_left(&s->gb) / 4, DCA_LBR_TIME_SAMPLES);
        for (i = 0; i < nblocks; i++)
            samples[i] = ff_dca_rsd_level_16[get_bits(&s->gb, 4)];
        break;

    default:
        av_assert0(0);
    }

    if (flag && get_bits_left(&s->gb) < 20)
        return;

    for (; i < DCA_LBR_TIME_SAMPLES; i++)
        s->time_samples[ch][sb][i] = lbr_rand(s, sb);

    s->ch_pres[ch] |= 1U << sb;
}
