
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int win32_check_window (int*,int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void gfx_ctx_gdi_check_window(void *data, bool *quit,
      bool *resize, unsigned *width, unsigned *height, bool is_shutdown)
{
   win32_check_window(quit, resize, width, height);
}
