
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hybrid_synthesis_deint; int hybrid_analysis_ileave; int hybrid_analysis; int mul_pair_single; int add_squares; } ;
typedef TYPE_1__ PSDSPContext ;


 scalar_t__ check_func (int ,char*) ;
 int ff_psdsp_init (TYPE_1__*) ;
 int report (char*) ;
 int test_add_squares () ;
 int test_hybrid_analysis () ;
 int test_hybrid_analysis_ileave () ;
 int test_hybrid_synthesis_deint () ;
 int test_mul_pair_single () ;
 int test_stereo_interpolate (TYPE_1__*) ;

void checkasm_check_aacpsdsp(void)
{
    PSDSPContext psdsp;

    ff_psdsp_init(&psdsp);

    if (check_func(psdsp.add_squares, "ps_add_squares"))
        test_add_squares();
    report("add_squares");

    if (check_func(psdsp.mul_pair_single, "ps_mul_pair_single"))
        test_mul_pair_single();
    report("mul_pair_single");

    if (check_func(psdsp.hybrid_analysis, "ps_hybrid_analysis"))
        test_hybrid_analysis();
    report("hybrid_analysis");

    if (check_func(psdsp.hybrid_analysis_ileave, "ps_hybrid_analysis_ileave"))
        test_hybrid_analysis_ileave();
    report("hybrid_analysis_ileave");

    if (check_func(psdsp.hybrid_synthesis_deint, "ps_hybrid_synthesis_deint"))
        test_hybrid_synthesis_deint();
    report("hybrid_synthesis_deint");

    test_stereo_interpolate(&psdsp);
    report("stereo_interpolate");
}
