
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EM_TRUE ;
 int emscripten_exit_pointerlock () ;
 int emscripten_request_pointerlock (char*,int ) ;

__attribute__((used)) static void rwebinput_grab_mouse(void *data, bool state)
{
   (void)data;

   if (state)
      emscripten_request_pointerlock("#canvas", EM_TRUE);
   else
      emscripten_exit_pointerlock();
}
