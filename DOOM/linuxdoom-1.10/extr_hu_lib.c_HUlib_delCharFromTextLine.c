
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; int needsupdate; scalar_t__* l; } ;
typedef TYPE_1__ hu_textline_t ;
typedef int boolean ;



boolean HUlib_delCharFromTextLine(hu_textline_t* t)
{

    if (!t->len) return 0;
    else
    {
 t->l[--t->len] = 0;
 t->needsupdate = 4;
 return 1;
    }

}
