
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HEVCDSPContext ;


 int check_sao_band (int ,int) ;
 int check_sao_edge (int ,int) ;
 int ff_hevc_dsp_init (int *,int) ;
 int report (char*) ;

void checkasm_check_hevc_sao(void)
{
    int bit_depth;

    for (bit_depth = 8; bit_depth <= 12; bit_depth += 2) {
        HEVCDSPContext h;

        ff_hevc_dsp_init(&h, bit_depth);
        check_sao_band(h, bit_depth);
    }
    report("sao_band");

    for (bit_depth = 8; bit_depth <= 12; bit_depth += 2) {
        HEVCDSPContext h;

        ff_hevc_dsp_init(&h, bit_depth);
        check_sao_edge(h, bit_depth);
    }
    report("sao_edge");
}
