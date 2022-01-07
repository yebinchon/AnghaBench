
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* GUI_GetKeyboard () ;
 char* KeyState ;
 char* SDL_GetKeyState (int ) ;

char *GetKeyboard(void)
{
 KeyState=SDL_GetKeyState(0);



 return((char *)KeyState);
}
