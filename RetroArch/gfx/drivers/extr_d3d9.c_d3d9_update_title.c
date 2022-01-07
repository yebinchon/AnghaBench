
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_3__ {int (* set_title ) (int *,char*) ;} ;
typedef TYPE_1__ ui_window_t ;
typedef int title ;


 int main_window ;
 int stub1 (int *,char*) ;
 TYPE_1__* ui_companion_driver_get_window_ptr () ;
 int video_driver_get_window_title (char*,int) ;

__attribute__((used)) static void d3d9_update_title(video_frame_info_t *video_info)
{

   const ui_window_t *window = ui_companion_driver_get_window_ptr();

   if (window)
   {
      char title[128];

      title[0] = '\0';

      video_driver_get_window_title(title, sizeof(title));

      if (title[0])
         window->set_title(&main_window, title);
   }

}
