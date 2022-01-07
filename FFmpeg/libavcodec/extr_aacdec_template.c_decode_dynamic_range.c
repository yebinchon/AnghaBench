
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void** dyn_rng_ctl; scalar_t__* dyn_rng_sgn; void* prog_ref_level; void** band_top; void* band_incr; void* interpolation_scheme; void* pce_instance_tag; } ;
typedef int GetBitContext ;
typedef TYPE_1__ DynamicRangeControl ;


 scalar_t__ decode_drc_channel_exclusions (TYPE_1__*,int *) ;
 void* get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int skip_bits (int *,int) ;
 int skip_bits1 (int *) ;

__attribute__((used)) static int decode_dynamic_range(DynamicRangeControl *che_drc,
                                GetBitContext *gb)
{
    int n = 1;
    int drc_num_bands = 1;
    int i;


    if (get_bits1(gb)) {
        che_drc->pce_instance_tag = get_bits(gb, 4);
        skip_bits(gb, 4);
        n++;
    }


    if (get_bits1(gb)) {
        n += decode_drc_channel_exclusions(che_drc, gb);
    }


    if (get_bits1(gb)) {
        che_drc->band_incr = get_bits(gb, 4);
        che_drc->interpolation_scheme = get_bits(gb, 4);
        n++;
        drc_num_bands += che_drc->band_incr;
        for (i = 0; i < drc_num_bands; i++) {
            che_drc->band_top[i] = get_bits(gb, 8);
            n++;
        }
    }


    if (get_bits1(gb)) {
        che_drc->prog_ref_level = get_bits(gb, 7);
        skip_bits1(gb);
        n++;
    }

    for (i = 0; i < drc_num_bands; i++) {
        che_drc->dyn_rng_sgn[i] = get_bits1(gb);
        che_drc->dyn_rng_ctl[i] = get_bits(gb, 7);
        n++;
    }

    return n;
}
