
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int apply_qmf; } ;
typedef TYPE_1__ G722DSPContext ;


 scalar_t__ check_func (int ,char*) ;
 int check_qmf () ;
 int ff_g722dsp_init (TYPE_1__*) ;
 int report (char*) ;

void checkasm_check_g722dsp(void)
{
    G722DSPContext h;

    ff_g722dsp_init(&h);

    if (check_func(h.apply_qmf, "g722_apply_qmf"))
        check_qmf();

    report("apply_qmf");
}
