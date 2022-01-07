
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t cl; size_t h; TYPE_2__* l; } ;
typedef TYPE_1__ hu_stext_t ;
struct TYPE_5__ {int needsupdate; } ;


 int HUlib_clearTextLine (TYPE_2__*) ;

void HUlib_addLineToSText(hu_stext_t* s)
{

    int i;


    if (++s->cl == s->h)
 s->cl = 0;
    HUlib_clearTextLine(&s->l[s->cl]);


    for (i=0 ; i<s->h ; i++)
 s->l[i].needsupdate = 4;

}
