
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HUlib_drawIText (int *) ;
 int HUlib_drawSText (int *) ;
 int HUlib_drawTextLine (int *,int) ;
 scalar_t__ automapactive ;
 int w_chat ;
 int w_message ;
 int w_title ;

void HU_Drawer(void)
{

    HUlib_drawSText(&w_message);
    HUlib_drawIText(&w_chat);
    if (automapactive)
 HUlib_drawTextLine(&w_title, 0);

}
