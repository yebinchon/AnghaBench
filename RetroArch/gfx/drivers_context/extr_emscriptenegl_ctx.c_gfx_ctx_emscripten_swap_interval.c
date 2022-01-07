
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EM_TIMING_RAF ;
 int EM_TIMING_SETIMMEDIATE ;
 int emscripten_set_main_loop_timing (int ,int) ;

__attribute__((used)) static void gfx_ctx_emscripten_swap_interval(void *data, int interval)
{
   (void)data;

   if (interval == 0)
      emscripten_set_main_loop_timing(EM_TIMING_SETIMMEDIATE, 0);
   else
      emscripten_set_main_loop_timing(EM_TIMING_RAF, interval);
}
