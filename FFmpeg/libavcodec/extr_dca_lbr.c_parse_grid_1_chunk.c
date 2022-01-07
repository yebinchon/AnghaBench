
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nsubbands; int min_mono_subband; int part_stereo_pres; int gb; int *** part_stereo; int avctx; void*** grid_3_avg; int ** grid_1_scf; } ;
struct TYPE_6__ {int len; int data; } ;
typedef TYPE_1__ LBRChunk ;
typedef TYPE_2__ DCALbrDecoder ;


 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 scalar_t__ ensure_bits (int *,int) ;
 int* ff_dca_grid_1_to_scf ;
 int* ff_dca_scf_to_grid_1 ;
 int ff_dca_vlc_avg_g3 ;
 int get_bits (int *,int) ;
 int get_bits_left (int *) ;
 scalar_t__ init_get_bits8 (int *,int ,int ) ;
 scalar_t__ parse_scale_factors (TYPE_2__*,int ) ;
 int parse_st_code (int *,int) ;
 void* parse_vlc (int *,int *,int) ;

__attribute__((used)) static int parse_grid_1_chunk(DCALbrDecoder *s, LBRChunk *chunk, int ch1, int ch2)
{
    int ch, sb, sf, nsubbands;

    if (!chunk->len)
        return 0;

    if (init_get_bits8(&s->gb, chunk->data, chunk->len) < 0)
        return -1;


    nsubbands = ff_dca_scf_to_grid_1[s->nsubbands - 1] + 1;
    for (sb = 2; sb < nsubbands; sb++) {
        if (parse_scale_factors(s, s->grid_1_scf[ch1][sb]) < 0)
            return -1;
        if (ch1 != ch2 && ff_dca_grid_1_to_scf[sb] < s->min_mono_subband
            && parse_scale_factors(s, s->grid_1_scf[ch2][sb]) < 0)
            return -1;
    }

    if (get_bits_left(&s->gb) < 1)
        return 0;


    for (sb = 0; sb < s->nsubbands - 4; sb++) {
        s->grid_3_avg[ch1][sb] = parse_vlc(&s->gb, &ff_dca_vlc_avg_g3, 2) - 16;
        if (ch1 != ch2) {
            if (sb + 4 < s->min_mono_subband)
                s->grid_3_avg[ch2][sb] = parse_vlc(&s->gb, &ff_dca_vlc_avg_g3, 2) - 16;
            else
                s->grid_3_avg[ch2][sb] = s->grid_3_avg[ch1][sb];
        }
    }

    if (get_bits_left(&s->gb) < 0) {
        av_log(s->avctx, AV_LOG_ERROR, "First grid chunk too short\n");
        return -1;
    }


    if (ch1 != ch2) {
        int min_v[2];

        if (ensure_bits(&s->gb, 8))
            return 0;

        min_v[0] = get_bits(&s->gb, 4);
        min_v[1] = get_bits(&s->gb, 4);

        nsubbands = (s->nsubbands - s->min_mono_subband + 3) / 4;
        for (sb = 0; sb < nsubbands; sb++)
            for (ch = ch1; ch <= ch2; ch++)
                for (sf = 1; sf <= 4; sf++)
                    s->part_stereo[ch][sb][sf] = parse_st_code(&s->gb, min_v[ch - ch1]);

        if (get_bits_left(&s->gb) >= 0)
            s->part_stereo_pres |= 1 << ch1;
    }



    return 0;
}
