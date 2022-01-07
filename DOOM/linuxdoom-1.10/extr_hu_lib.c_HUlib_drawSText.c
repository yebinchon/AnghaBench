
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hu_textline_t ;
struct TYPE_3__ {int h; int cl; int * l; int * on; } ;
typedef TYPE_1__ hu_stext_t ;


 int HUlib_drawTextLine (int *,int) ;

void HUlib_drawSText(hu_stext_t* s)
{
    int i, idx;
    hu_textline_t *l;

    if (!*s->on)
 return;


    for (i=0 ; i<s->h ; i++)
    {
 idx = s->cl - i;
 if (idx < 0)
     idx += s->h;

 l = &s->l[idx];


 HUlib_drawTextLine(l, 0);
    }

}
