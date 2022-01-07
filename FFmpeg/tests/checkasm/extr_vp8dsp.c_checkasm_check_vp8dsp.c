
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_idct () ;
 int check_idct_dc4 () ;
 int check_loopfilter_16y () ;
 int check_loopfilter_8uv () ;
 int check_loopfilter_simple () ;
 int check_luma_dc_wht () ;
 int check_mc () ;
 int report (char*) ;

void checkasm_check_vp8dsp(void)
{
    check_idct();
    check_idct_dc4();
    check_luma_dc_wht();
    report("idct");
    check_mc();
    report("mc");
    check_loopfilter_16y();
    check_loopfilter_8uv();
    check_loopfilter_simple();
    report("loopfilter");
}
