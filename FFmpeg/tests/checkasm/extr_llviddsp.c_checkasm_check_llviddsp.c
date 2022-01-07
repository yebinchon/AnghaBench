
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LLVidDSPContext ;


 int av_clip (int,int,int) ;
 int check_add_bytes (int ,int) ;
 int check_add_gradient_pred (int ,int) ;
 int check_add_left_pred (int ,int,int,char*) ;
 int check_add_left_pred_16 (int ,int,int,int,char*) ;
 int check_add_median_pred (int ,int) ;
 int ff_llviddsp_init (int *) ;
 int report (char*) ;
 int rnd () ;

void checkasm_check_llviddsp(void)
{
    LLVidDSPContext c;
    int width = 16 * av_clip(rnd(), 16, 128);
    int accRnd = rnd() & 0xFF;

    ff_llviddsp_init(&c);

    check_add_bytes(c, width);
    report("add_bytes");

    check_add_median_pred(c, width);
    report("add_median_pred");

    check_add_left_pred(c, width, 0, "add_left_pred_zero");
    report("add_left_pred_zero");

    check_add_left_pred(c, width, accRnd, "add_left_pred_rnd_acc");
    report("add_left_pred_rnd_acc");

    check_add_left_pred_16(c, 255, width, accRnd, "add_left_pred_int16");
    report("add_left_pred_int16");

    check_add_gradient_pred(c, width);
    report("add_gradient_pred");
}
