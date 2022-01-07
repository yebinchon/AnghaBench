
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nsubbands; int min_mono_subband; int gb; scalar_t__** grid_3_avg; int ** grid_1_scf; } ;
typedef TYPE_1__ DCALbrDecoder ;


 scalar_t__ ensure_bits (int *,int) ;
 int* ff_dca_grid_1_to_scf ;
 int* ff_dca_scf_to_grid_1 ;
 int ff_dca_vlc_avg_g3 ;
 scalar_t__ parse_scale_factors (TYPE_1__*,int ) ;
 scalar_t__ parse_vlc (int *,int *,int) ;

__attribute__((used)) static int parse_grid_1_sec_ch(DCALbrDecoder *s, int ch2)
{
    int sb, nsubbands;


    nsubbands = ff_dca_scf_to_grid_1[s->nsubbands - 1] + 1;
    for (sb = 2; sb < nsubbands; sb++) {
        if (ff_dca_grid_1_to_scf[sb] >= s->min_mono_subband
            && parse_scale_factors(s, s->grid_1_scf[ch2][sb]) < 0)
            return -1;
    }


    for (sb = 0; sb < s->nsubbands - 4; sb++) {
        if (sb + 4 >= s->min_mono_subband) {
            if (ensure_bits(&s->gb, 20))
                return 0;
            s->grid_3_avg[ch2][sb] = parse_vlc(&s->gb, &ff_dca_vlc_avg_g3, 2) - 16;
        }
    }

    return 0;
}
