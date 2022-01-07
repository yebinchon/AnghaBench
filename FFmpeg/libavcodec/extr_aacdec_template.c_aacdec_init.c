
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int subband_scale; int vector_pow43; int update_ltp; int windowing_and_mdct_ltp; int apply_tns; int apply_ltp; int imdct_and_windowing; } ;
typedef TYPE_1__ AACContext ;


 scalar_t__ ARCH_MIPS ;
 int apply_ltp ;
 int apply_tns ;
 int ff_aacdec_init_mips (TYPE_1__*) ;
 int imdct_and_windowing ;
 int subband_scale ;
 int update_ltp ;
 int vector_pow43 ;
 int windowing_and_mdct_ltp ;

__attribute__((used)) static void aacdec_init(AACContext *c)
{
    c->imdct_and_windowing = imdct_and_windowing;
    c->apply_ltp = apply_ltp;
    c->apply_tns = apply_tns;
    c->windowing_and_mdct_ltp = windowing_and_mdct_ltp;
    c->update_ltp = update_ltp;






    if(ARCH_MIPS)
        ff_aacdec_init_mips(c);

}
