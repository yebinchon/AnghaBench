
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* upl_t ;
struct TYPE_4__ {struct TYPE_4__* associated_upl; } ;



void upl_set_associated_upl(upl_t upl, upl_t associated_upl)
{
 upl->associated_upl = associated_upl;
}
