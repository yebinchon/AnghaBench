
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_ipred () ;
 int check_itxfm () ;
 int check_loopfilter () ;
 int check_mc () ;

void checkasm_check_vp9dsp(void)
{
    check_ipred();
    check_itxfm();
    check_loopfilter();
    check_mc();
}
