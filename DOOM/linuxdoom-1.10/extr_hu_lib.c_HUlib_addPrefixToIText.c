
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int len; } ;
struct TYPE_4__ {TYPE_3__ l; int lm; } ;
typedef TYPE_1__ hu_itext_t ;


 int HUlib_addCharToTextLine (TYPE_3__*,int ) ;

void
HUlib_addPrefixToIText
( hu_itext_t* it,
  char* str )
{
    while (*str)
 HUlib_addCharToTextLine(&it->l, *(str++));
    it->lm = it->l.len;
}
