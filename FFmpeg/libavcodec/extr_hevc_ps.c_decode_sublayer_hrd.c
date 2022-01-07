
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int get_ue_golomb_long (int *) ;
 int skip_bits1 (int *) ;

__attribute__((used)) static void decode_sublayer_hrd(GetBitContext *gb, unsigned int nb_cpb,
                                int subpic_params_present)
{
    int i;

    for (i = 0; i < nb_cpb; i++) {
        get_ue_golomb_long(gb);
        get_ue_golomb_long(gb);

        if (subpic_params_present) {
            get_ue_golomb_long(gb);
            get_ue_golomb_long(gb);
        }
        skip_bits1(gb);
    }
}
