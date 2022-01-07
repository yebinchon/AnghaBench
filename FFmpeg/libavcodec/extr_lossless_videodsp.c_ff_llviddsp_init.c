
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int add_gradient_pred; int add_left_pred_int16; int add_left_pred; int add_median_pred; int add_bytes; } ;
typedef TYPE_1__ LLVidDSPContext ;


 scalar_t__ ARCH_PPC ;
 scalar_t__ ARCH_X86 ;
 int add_bytes_c ;
 int add_gradient_pred_c ;
 int add_left_pred_c ;
 int add_left_pred_int16_c ;
 int add_median_pred_c ;
 int ff_llviddsp_init_ppc (TYPE_1__*) ;
 int ff_llviddsp_init_x86 (TYPE_1__*) ;

void ff_llviddsp_init(LLVidDSPContext *c)
{
    c->add_bytes = add_bytes_c;
    c->add_median_pred = add_median_pred_c;
    c->add_left_pred = add_left_pred_c;

    c->add_left_pred_int16 = add_left_pred_int16_c;
    c->add_gradient_pred = add_gradient_pred_c;

    if (ARCH_PPC)
        ff_llviddsp_init_ppc(c);
    if (ARCH_X86)
        ff_llviddsp_init_x86(c);
}
