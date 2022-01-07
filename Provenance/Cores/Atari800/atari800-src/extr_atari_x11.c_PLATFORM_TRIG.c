
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Window ;
struct TYPE_3__ {int buttons; } ;


 unsigned int Button1Mask ;
 int JS_RETURN ;
 scalar_t__ XQueryPointer (int ,int ,int *,int *,int*,int*,int*,int*,unsigned int*) ;
 int display ;
 int exit (int) ;
 int js0 ;
 int js0_mode ;
 int js1 ;
 int js1_mode ;
 TYPE_1__ js_data ;
 int keypad_mode ;
 int keypad_trig ;
 int perror (char*) ;
 int read (int ,TYPE_1__*,int) ;
 int window ;
 int window_height ;
 int window_width ;
 int xmouse_mode ;

int PLATFORM_TRIG(int num)
{
 int trig = 1;

 if (num == keypad_mode) {
  trig = keypad_trig;
 }
 if (num == xmouse_mode) {
  Window root_return;
  Window child_return;
  int root_x_return;
  int root_y_return;
  int win_x_return;
  int win_y_return;
  unsigned int mask_return;

  if (XQueryPointer(display, window, &root_return, &child_return,
        &root_x_return, &root_y_return,
        &win_x_return, &win_y_return,
        &mask_return)) {
   if (win_x_return < 0 || win_x_return > window_width ||
       win_y_return < 0 || win_y_return > window_height)
    trig = 1;
   else if (mask_return & Button1Mask)
    trig = 0;
  }
 }
 return trig;
}
