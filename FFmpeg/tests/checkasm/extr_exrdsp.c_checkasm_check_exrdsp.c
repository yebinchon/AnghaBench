
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int predictor; int reorder_pixels; } ;
typedef TYPE_1__ ExrDSPContext ;


 scalar_t__ check_func (int ,char*) ;
 int check_predictor () ;
 int check_reorder_pixels () ;
 int ff_exrdsp_init (TYPE_1__*) ;
 int report (char*) ;

void checkasm_check_exrdsp(void)
{
    ExrDSPContext h;

    ff_exrdsp_init(&h);

    if (check_func(h.reorder_pixels, "reorder_pixels"))
        check_reorder_pixels();

    report("reorder_pixels");

    if (check_func(h.predictor, "predictor"))
        check_predictor();

    report("predictor");
}
