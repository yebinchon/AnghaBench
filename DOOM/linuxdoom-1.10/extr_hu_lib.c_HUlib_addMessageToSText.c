
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t cl; int * l; } ;
typedef TYPE_1__ hu_stext_t ;


 int HUlib_addCharToTextLine (int *,int ) ;
 int HUlib_addLineToSText (TYPE_1__*) ;

void
HUlib_addMessageToSText
( hu_stext_t* s,
  char* prefix,
  char* msg )
{
    HUlib_addLineToSText(s);
    if (prefix)
 while (*prefix)
     HUlib_addCharToTextLine(&s->l[s->cl], *(prefix++));

    while (*msg)
 HUlib_addCharToTextLine(&s->l[s->cl], *(msg++));
}
