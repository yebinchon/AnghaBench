
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ name; } ;
typedef TYPE_1__ OptionDef ;


 int OPT_INPUT ;
 int OPT_OUTPUT ;
 int OPT_PERFILE ;
 int av_assert0 (int) ;

__attribute__((used)) static void check_options(const OptionDef *po)
{
    while (po->name) {
        if (po->flags & OPT_PERFILE)
            av_assert0(po->flags & (OPT_INPUT | OPT_OUTPUT));
        po++;
    }
}
