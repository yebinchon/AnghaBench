
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HEVCDSPContext ;


 int check_idct (int ,int) ;
 int check_idct_dc (int ,int) ;
 int ff_hevc_dsp_init (int *,int) ;
 int report (char*) ;

void checkasm_check_hevc_idct(void)
{
    int bit_depth;

    for (bit_depth = 8; bit_depth <= 12; bit_depth += 2) {
        HEVCDSPContext h;

        ff_hevc_dsp_init(&h, bit_depth);
        check_idct_dc(h, bit_depth);
    }
    report("idct_dc");

    for (bit_depth = 8; bit_depth <= 12; bit_depth += 2) {
        HEVCDSPContext h;

        ff_hevc_dsp_init(&h, bit_depth);
        check_idct(h, bit_depth);
    }
    report("idct");
}
