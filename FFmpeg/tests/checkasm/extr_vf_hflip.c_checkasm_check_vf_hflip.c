
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_hflip (int,char*) ;
 int report (char*) ;

void checkasm_check_vf_hflip(void)
{
    check_hflip(1, "byte");
    report("hflip_byte");

    check_hflip(2, "short");
    report("hflip_short");
}
