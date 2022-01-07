
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int title ;
typedef int SDL_Window ;


 int SDL_SetWindowTitle (int *,char*) ;
 int SDL_WM_SetCaption (char*,int *) ;
 scalar_t__ video_driver_display_userdata_get () ;
 int video_driver_get_window_title (char*,int) ;

__attribute__((used)) static void sdl_ctx_update_title(void *data, void *data2)
{
   char title[128];
   title[0] = '\0';

   video_driver_get_window_title(title, sizeof(title));

   if (title[0])
   {



      SDL_WM_SetCaption(title, ((void*)0));

   }
}
