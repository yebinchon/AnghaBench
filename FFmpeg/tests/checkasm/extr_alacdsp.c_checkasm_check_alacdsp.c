
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_append_extra_bits () ;
 int check_decorrelate_stereo () ;

void checkasm_check_alacdsp(void)
{
    check_decorrelate_stereo();
    check_append_extra_bits();
}
