
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int framenum; int **** lpc_coeff; int gb; } ;
typedef TYPE_1__ DCALbrDecoder ;


 int convert_lpc (int ,int*) ;
 scalar_t__ ensure_bits (int *,int) ;
 int get_bits (int *,int) ;

__attribute__((used)) static int parse_lpc(DCALbrDecoder *s, int ch1, int ch2, int start_sb, int end_sb)
{
    int f = s->framenum & 1;
    int i, sb, ch, codes[16];


    for (sb = start_sb; sb < end_sb; sb++) {
        int ncodes = 8 * (1 + (sb < 2));
        for (ch = ch1; ch <= ch2; ch++) {
            if (ensure_bits(&s->gb, 4 * ncodes))
                return 0;
            for (i = 0; i < ncodes; i++)
                codes[i] = get_bits(&s->gb, 4);
            for (i = 0; i < ncodes / 8; i++)
                convert_lpc(s->lpc_coeff[f][ch][sb][i], &codes[i * 8]);
        }
    }

    return 0;
}
