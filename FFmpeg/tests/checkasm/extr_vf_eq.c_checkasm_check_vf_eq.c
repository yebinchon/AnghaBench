
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_eq () ;
 int report (char*) ;

void checkasm_check_vf_eq(void)
{
    check_eq();
    report("eq");
}
