
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HEVCDSPContext ;


 int check_add_res (int ,int) ;
 int ff_hevc_dsp_init (int *,int) ;
 int report (char*) ;

void checkasm_check_hevc_add_res(void)
{
    int bit_depth;

    for (bit_depth = 8; bit_depth <= 10; bit_depth++) {
        HEVCDSPContext h;

        ff_hevc_dsp_init(&h, bit_depth);
        check_add_res(h, bit_depth);
    }
    report("add_residual");
}
