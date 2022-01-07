
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sbr_hf_inverse_filter; int sbr_x_gen; int sbr_hf_assemble; int sbr_lf_gen; } ;
typedef TYPE_1__ AACSBRContext ;


 scalar_t__ ARCH_MIPS ;
 int ff_aacsbr_func_ptr_init_mips (TYPE_1__*) ;
 int sbr_hf_assemble ;
 int sbr_hf_inverse_filter ;
 int sbr_lf_gen ;
 int sbr_x_gen ;

__attribute__((used)) static void aacsbr_func_ptr_init(AACSBRContext *c)
{
    c->sbr_lf_gen = sbr_lf_gen;
    c->sbr_hf_assemble = sbr_hf_assemble;
    c->sbr_x_gen = sbr_x_gen;
    c->sbr_hf_inverse_filter = sbr_hf_inverse_filter;


    if(ARCH_MIPS)
        ff_aacsbr_func_ptr_init_mips(c);

}
