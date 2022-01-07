
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ EMSCRIPTEN_RESULT ;


 scalar_t__ EMSCRIPTEN_RESULT_SUCCESS ;
 int RARCH_ERR (char*,scalar_t__) ;
 int dummyErrnoCodes () ;
 int emscripten_fullscreenchange_cb ;
 int emscripten_mainloop ;
 int emscripten_set_canvas_element_size (char*,int,int) ;
 int emscripten_set_element_css_size (char*,double,double) ;
 scalar_t__ emscripten_set_fullscreenchange_callback (char*,int *,int,int ) ;
 int emscripten_set_main_loop (int ,int ,int ) ;
 int rarch_main (int,char**,int *) ;

int main(int argc, char *argv[])
{
   EMSCRIPTEN_RESULT r;

   dummyErrnoCodes();

   emscripten_set_canvas_element_size("#canvas", 800, 600);
   emscripten_set_element_css_size("#canvas", 800.0, 600.0);
   emscripten_set_main_loop(emscripten_mainloop, 0, 0);
   rarch_main(argc, argv, ((void*)0));

   r = emscripten_set_fullscreenchange_callback("#document", ((void*)0), 0,
      emscripten_fullscreenchange_cb);
   if (r != EMSCRIPTEN_RESULT_SUCCESS)
   {
      RARCH_ERR(
         "[EMSCRIPTEN/CTX] failed to create fullscreen callback: %d\n", r);
   }

   return 0;
}
