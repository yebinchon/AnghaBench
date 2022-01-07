
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_2__ {int (* pmInterruptPrewakeApplicable ) () ;} ;


 int FALSE ;
 TYPE_1__* pmDispatch ;
 scalar_t__ pmInitDone ;
 int stub1 () ;

boolean_t
ml_get_interrupt_prewake_applicable()
{
    boolean_t applicable = FALSE;

    if (pmInitDone
 && pmDispatch != ((void*)0)
 && pmDispatch->pmInterruptPrewakeApplicable != ((void*)0))
 applicable = pmDispatch->pmInterruptPrewakeApplicable();

    return applicable;
}
