
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; } ;
struct TYPE_4__ {scalar_t__ lm; TYPE_2__ l; } ;
typedef TYPE_1__ hu_itext_t ;


 int HUlib_delCharFromTextLine (TYPE_2__*) ;

void HUlib_delCharFromIText(hu_itext_t* it)
{
    if (it->l.len != it->lm)
 HUlib_delCharFromTextLine(&it->l);
}
