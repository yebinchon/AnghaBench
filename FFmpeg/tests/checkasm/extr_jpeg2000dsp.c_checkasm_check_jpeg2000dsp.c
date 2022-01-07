
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mct_decode; } ;
typedef TYPE_1__ Jpeg2000DSPContext ;


 size_t FF_DWT53 ;
 size_t FF_DWT97 ;
 scalar_t__ check_func (int ,char*) ;
 int check_ict_float () ;
 int check_rct_int () ;
 int ff_jpeg2000dsp_init (TYPE_1__*) ;
 int report (char*) ;

void checkasm_check_jpeg2000dsp(void)
{
    Jpeg2000DSPContext h;

    ff_jpeg2000dsp_init(&h);

    if (check_func(h.mct_decode[FF_DWT53], "jpeg2000_rct_int"))
        check_rct_int();
    if (check_func(h.mct_decode[FF_DWT97], "jpeg2000_ict_float"))
        check_ict_float();

    report("mct_decode");
}
