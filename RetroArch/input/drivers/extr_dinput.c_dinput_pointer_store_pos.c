
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pointer_status {int pointer_y; int pointer_x; } ;
typedef int WPARAM ;
struct TYPE_3__ {int y; int x; } ;
typedef TYPE_1__ POINT ;
typedef int HWND ;


 int GET_X_LPARAM (int ) ;
 int GET_Y_LPARAM (int ) ;
 int ScreenToClient (int ,TYPE_1__*) ;
 scalar_t__ video_driver_window_get () ;

__attribute__((used)) static void dinput_pointer_store_pos(
      struct pointer_status *pointer, WPARAM lParam)
{
   POINT point;

   point.x = GET_X_LPARAM(lParam);
   point.y = GET_Y_LPARAM(lParam);
   ScreenToClient((HWND)video_driver_window_get(), &point);
   pointer->pointer_x = point.x;
   pointer->pointer_y = point.y;
}
