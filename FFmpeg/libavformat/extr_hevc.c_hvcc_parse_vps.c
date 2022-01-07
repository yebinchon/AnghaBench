
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numTemporalLayers; } ;
typedef TYPE_1__ HEVCDecoderConfigurationRecord ;
typedef int GetBitContext ;


 int FFMAX (int ,unsigned int) ;
 unsigned int get_bits (int *,int) ;
 int hvcc_parse_ptl (int *,TYPE_1__*,unsigned int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int hvcc_parse_vps(GetBitContext *gb,
                          HEVCDecoderConfigurationRecord *hvcc)
{
    unsigned int vps_max_sub_layers_minus1;






    skip_bits(gb, 12);

    vps_max_sub_layers_minus1 = get_bits(gb, 3);
    hvcc->numTemporalLayers = FFMAX(hvcc->numTemporalLayers,
                                    vps_max_sub_layers_minus1 + 1);





    skip_bits(gb, 17);

    hvcc_parse_ptl(gb, hvcc, vps_max_sub_layers_minus1);


    return 0;
}
