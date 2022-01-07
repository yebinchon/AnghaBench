
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int h; scalar_t__* on; scalar_t__ laston; TYPE_2__* l; } ;
typedef TYPE_1__ hu_stext_t ;
struct TYPE_5__ {int needsupdate; } ;


 int HUlib_eraseTextLine (TYPE_2__*) ;

void HUlib_eraseSText(hu_stext_t* s)
{

    int i;

    for (i=0 ; i<s->h ; i++)
    {
 if (s->laston && !*s->on)
     s->l[i].needsupdate = 4;
 HUlib_eraseTextLine(&s->l[i]);
    }
    s->laston = *s->on;

}
