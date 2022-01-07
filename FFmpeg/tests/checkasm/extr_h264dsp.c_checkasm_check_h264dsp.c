
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_idct () ;
 int check_idct_multiple () ;
 int check_loop_filter () ;
 int check_loop_filter_intra () ;
 int report (char*) ;

void checkasm_check_h264dsp(void)
{
    check_idct();
    check_idct_multiple();
    report("idct");

    check_loop_filter();
    report("loop_filter");

    check_loop_filter_intra();
    report("loop_filter_intra");
}
