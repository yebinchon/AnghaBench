
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int l; } ;
typedef TYPE_1__ hu_itext_t ;
typedef int boolean ;


 int HUlib_addCharToTextLine (int *,char) ;
 int HUlib_delCharFromIText (TYPE_1__*) ;
 unsigned char KEY_BACKSPACE ;
 unsigned char KEY_ENTER ;

boolean
HUlib_keyInIText
( hu_itext_t* it,
  unsigned char ch )
{

    if (ch >= ' ' && ch <= '_')
   HUlib_addCharToTextLine(&it->l, (char) ch);
    else
 if (ch == KEY_BACKSPACE)
     HUlib_delCharFromIText(it);
 else
     if (ch != KEY_ENTER)
  return 0;

    return 1;

}
