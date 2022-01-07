
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ ti; scalar_t__ index; } ;
typedef TYPE_1__ sel_t ;
typedef int boolean_t ;
struct TYPE_5__ {int access; } ;


 int ACC_PL_U ;
 int FALSE ;
 scalar_t__ GDTSZ ;
 scalar_t__ SEL_LDT ;
 int TRUE ;
 TYPE_3__* gdt_desc_p (scalar_t__) ;
 TYPE_1__ selector_to_sel (scalar_t__) ;

boolean_t
valid_user_data_selector(uint16_t selector)
{
    sel_t sel = selector_to_sel(selector);

    if (selector == 0)
     return (TRUE);

    if (sel.ti == SEL_LDT)
 return (TRUE);
    else if (sel.index < GDTSZ) {
 if ((gdt_desc_p(selector)->access & ACC_PL_U) == ACC_PL_U)
     return (TRUE);
    }
    return (FALSE);
}
