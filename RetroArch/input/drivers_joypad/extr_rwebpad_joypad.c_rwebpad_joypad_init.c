
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ EMSCRIPTEN_RESULT ;


 scalar_t__ EMSCRIPTEN_RESULT_NOT_SUPPORTED ;
 scalar_t__ EMSCRIPTEN_RESULT_SUCCESS ;
 int RARCH_ERR (char*,scalar_t__) ;
 scalar_t__ emscripten_sample_gamepad_data () ;
 scalar_t__ emscripten_set_gamepadconnected_callback (int *,int,int ) ;
 scalar_t__ emscripten_set_gamepaddisconnected_callback (int *,int,int ) ;
 int g_rwebpad_initialized ;
 int rwebpad_gamepad_cb ;

__attribute__((used)) static bool rwebpad_joypad_init(void *data)
{
   EMSCRIPTEN_RESULT supported;
   (void)data;

   supported = emscripten_sample_gamepad_data();
   if (supported == EMSCRIPTEN_RESULT_NOT_SUPPORTED)
      return 0;

   if (!g_rwebpad_initialized)
   {
      EMSCRIPTEN_RESULT r;
      g_rwebpad_initialized = 1;


      r = emscripten_set_gamepadconnected_callback(((void*)0), 0,
         rwebpad_gamepad_cb);
      if (r != EMSCRIPTEN_RESULT_SUCCESS)
      {
         RARCH_ERR(
            "[EMSCRIPTEN/PAD] failed to create connect callback: %d\n", r);
      }

      r = emscripten_set_gamepaddisconnected_callback(((void*)0), 0,
         rwebpad_gamepad_cb);
      if (r != EMSCRIPTEN_RESULT_SUCCESS)
      {
         RARCH_ERR(
            "[EMSCRIPTEN/PAD] failed to create disconnect callback: %d\n", r);
      }
   }

   return 1;
}
