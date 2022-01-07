
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int deemphasis; int postfilter; } ;
typedef TYPE_1__ OpusDSP ;


 scalar_t__ check_func (int ,char*) ;
 int ff_opus_dsp_init (TYPE_1__*) ;
 int report (char*) ;
 int test_deemphasis () ;
 int test_postfilter (int) ;

void checkasm_check_opusdsp(void)
{
    OpusDSP ctx;
    ff_opus_dsp_init(&ctx);

    if (check_func(ctx.postfilter, "postfilter_15"))
        test_postfilter(15);
    report("postfilter_15");

    if (check_func(ctx.postfilter, "postfilter_512"))
        test_postfilter(512);
    report("postfilter_512");

    if (check_func(ctx.postfilter, "postfilter_1022"))
        test_postfilter(1022);
    report("postfilter_1022");

    if (check_func(ctx.deemphasis, "deemphasis"))
        test_deemphasis();
    report("deemphasis");
}
