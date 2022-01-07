
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HUlib_eraseIText (int *) ;
 int HUlib_eraseSText (int *) ;
 int HUlib_eraseTextLine (int *) ;
 int w_chat ;
 int w_message ;
 int w_title ;

void HU_Erase(void)
{

    HUlib_eraseSText(&w_message);
    HUlib_eraseIText(&w_chat);
    HUlib_eraseTextLine(&w_title);

}
