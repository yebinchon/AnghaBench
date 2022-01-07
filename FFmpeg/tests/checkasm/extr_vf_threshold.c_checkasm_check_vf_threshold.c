
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_threshold (int) ;
 int report (char*) ;

void checkasm_check_vf_threshold(void)
{
    check_threshold(8);
    report("threshold8");

    check_threshold(16);
    report("threshold16");
}
