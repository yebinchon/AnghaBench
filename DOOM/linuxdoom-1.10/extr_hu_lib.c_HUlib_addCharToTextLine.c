
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; char* l; int needsupdate; } ;
typedef TYPE_1__ hu_textline_t ;
typedef int boolean ;


 size_t HU_MAXLINELENGTH ;

boolean
HUlib_addCharToTextLine
( hu_textline_t* t,
  char ch )
{

    if (t->len == HU_MAXLINELENGTH)
 return 0;
    else
    {
 t->l[t->len++] = ch;
 t->l[t->len] = 0;
 t->needsupdate = 4;
 return 1;
    }

}
