
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int min_mono_subband; unsigned int* grid_3_pres; int gb; scalar_t__*** grid_3_scf; } ;
typedef TYPE_1__ DCALbrDecoder ;


 scalar_t__ ensure_bits (int *,int) ;
 int ff_dca_vlc_grid_3 ;
 scalar_t__ parse_vlc (int *,int *,int) ;

__attribute__((used)) static void parse_grid_3(DCALbrDecoder *s, int ch1, int ch2, int sb, int flag)
{
    int i, ch;

    for (ch = ch1; ch <= ch2; ch++) {
        if ((ch != ch1 && sb + 4 >= s->min_mono_subband) != flag)
            continue;

        if (s->grid_3_pres[ch] & (1U << sb))
            continue;

        for (i = 0; i < 8; i++) {
            if (ensure_bits(&s->gb, 20))
                return;
            s->grid_3_scf[ch][sb][i] = parse_vlc(&s->gb, &ff_dca_vlc_grid_3, 2) - 16;
        }


        s->grid_3_pres[ch] |= 1U << sb;
    }
}
