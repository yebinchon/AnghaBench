
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LLVidEncDSPContext ;


 int check_diff_bytes (int *) ;
 int check_sub_left_pred (int *) ;
 int ff_llvidencdsp_init (int *) ;
 int report (char*) ;

void checkasm_check_llviddspenc(void)
{
    LLVidEncDSPContext c;
    ff_llvidencdsp_init(&c);

    check_diff_bytes(&c);
    report("diff_bytes");

    check_sub_left_pred(&c);
    report("sub_left_predict");
}
