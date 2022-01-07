
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int nsubbands; int limited_rate; int** quant_levels; int ** grid_1_scf; int gb; } ;
struct TYPE_8__ {int len; int data; } ;
typedef TYPE_1__ LBRChunk ;
typedef TYPE_2__ DCALbrDecoder ;


 int DCA_LBR_SUBBANDS ;
 size_t** ff_dca_sb_reorder ;
 int get_bits (int *,int) ;
 scalar_t__ init_get_bits8 (int *,int ,int ) ;
 scalar_t__ parse_lpc (TYPE_2__*,int,int,int ,int) ;
 scalar_t__ parse_scale_factors (TYPE_2__*,int ) ;
 scalar_t__ parse_ts (TYPE_2__*,int,int,int ,int,int ) ;

__attribute__((used)) static int parse_high_res_grid(DCALbrDecoder *s, LBRChunk *chunk, int ch1, int ch2)
{
    int quant_levels[DCA_LBR_SUBBANDS];
    int sb, ch, ol, st, max_sb, profile;

    if (!chunk->len)
        return 0;

    if (init_get_bits8(&s->gb, chunk->data, chunk->len) < 0)
        return -1;


    profile = get_bits(&s->gb, 8);

    ol = (profile >> 3) & 7;

    st = profile >> 6;

    max_sb = profile & 7;


    for (sb = 0; sb < s->nsubbands; sb++) {
        int f = sb * s->limited_rate / s->nsubbands;
        int a = 18000 / (12 * f / 1000 + 100 + 40 * st) + 20 * ol;
        if (a <= 95)
            quant_levels[sb] = 1;
        else if (a <= 140)
            quant_levels[sb] = 2;
        else if (a <= 180)
            quant_levels[sb] = 3;
        else if (a <= 230)
            quant_levels[sb] = 4;
        else
            quant_levels[sb] = 5;
    }


    for (sb = 0; sb < 8; sb++)
        s->quant_levels[ch1 / 2][sb] = quant_levels[ff_dca_sb_reorder[max_sb][sb]];
    for (; sb < s->nsubbands; sb++)
        s->quant_levels[ch1 / 2][sb] = quant_levels[sb];


    if (parse_lpc(s, ch1, ch2, 0, 2) < 0)
        return -1;


    if (parse_ts(s, ch1, ch2, 0, 2, 0) < 0)
        return -1;


    for (sb = 0; sb < 2; sb++)
        for (ch = ch1; ch <= ch2; ch++)
            if (parse_scale_factors(s, s->grid_1_scf[ch][sb]) < 0)
                return -1;

    return 0;
}
