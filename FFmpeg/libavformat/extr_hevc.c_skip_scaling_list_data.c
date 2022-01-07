
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int FFMIN (int,int) ;
 int get_bits1 (int *) ;
 int get_se_golomb_long (int *) ;
 int get_ue_golomb_long (int *) ;

__attribute__((used)) static void skip_scaling_list_data(GetBitContext *gb)
{
    int i, j, k, num_coeffs;

    for (i = 0; i < 4; i++)
        for (j = 0; j < (i == 3 ? 2 : 6); j++)
            if (!get_bits1(gb))
                get_ue_golomb_long(gb);
            else {
                num_coeffs = FFMIN(64, 1 << (4 + (i << 1)));

                if (i > 1)
                    get_se_golomb_long(gb);

                for (k = 0; k < num_coeffs; k++)
                    get_se_golomb_long(gb);
            }
}
