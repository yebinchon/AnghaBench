
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int KEYBOARD_FlushEvents () ;
 int LWP_JoinThread (scalar_t__,int *) ;
 scalar_t__ LWP_THREAD_NULL ;
 int USBKeyboard_Close () ;
 int USBKeyboard_Deinitialize () ;
 scalar_t__ _kbd_buf_thread ;
 scalar_t__ _kbd_thread ;
 int _kbd_thread_quit ;
 int _kbd_thread_running ;
 int * _sc_map ;
 scalar_t__ _sc_maplen ;
 int free (int *) ;

s32 KEYBOARD_Deinit(void)
{
 if (_kbd_thread_running) {
  _kbd_thread_quit = 1;

  if(_kbd_thread != LWP_THREAD_NULL)
   LWP_JoinThread(_kbd_thread, ((void*)0));
  if(_kbd_buf_thread != LWP_THREAD_NULL)
   LWP_JoinThread(_kbd_buf_thread, ((void*)0));

  _kbd_thread_running = 0;
 }

 USBKeyboard_Close();
 KEYBOARD_FlushEvents();
 USBKeyboard_Deinitialize();

 if (_sc_map) {
  free(_sc_map);
  _sc_map = ((void*)0);
  _sc_maplen = 0;
 }

 return 1;
}
