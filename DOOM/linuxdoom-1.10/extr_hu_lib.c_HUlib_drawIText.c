
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hu_textline_t ;
struct TYPE_3__ {int * on; int l; } ;
typedef TYPE_1__ hu_itext_t ;


 int HUlib_drawTextLine (int *,int) ;

void HUlib_drawIText(hu_itext_t* it)
{

    hu_textline_t *l = &it->l;

    if (!*it->on)
 return;
    HUlib_drawTextLine(l, 1);

}
