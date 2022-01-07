
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int quantizer; int dequant_dc; int dequant_ac; int bounding_values_array; } ;
typedef TYPE_1__ VP56Context ;


 int ff_vp3dsp_set_bounding_values (int ,int ) ;
 int* ff_vp56_ac_dequant ;
 int* ff_vp56_dc_dequant ;
 int * ff_vp56_filter_threshold ;

void ff_vp56_init_dequant(VP56Context *s, int quantizer)
{
    if (s->quantizer != quantizer)
        ff_vp3dsp_set_bounding_values(s->bounding_values_array, ff_vp56_filter_threshold[quantizer]);
    s->quantizer = quantizer;
    s->dequant_dc = ff_vp56_dc_dequant[quantizer] << 2;
    s->dequant_ac = ff_vp56_ac_dequant[quantizer] << 2;
}
