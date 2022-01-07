
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int needsupdate; } ;
struct TYPE_4__ {scalar_t__* on; scalar_t__ laston; TYPE_2__ l; } ;
typedef TYPE_1__ hu_itext_t ;


 int HUlib_eraseTextLine (TYPE_2__*) ;

void HUlib_eraseIText(hu_itext_t* it)
{
    if (it->laston && !*it->on)
 it->l.needsupdate = 4;
    HUlib_eraseTextLine(&it->l);
    it->laston = *it->on;
}
