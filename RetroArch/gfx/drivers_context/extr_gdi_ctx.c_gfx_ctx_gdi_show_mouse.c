
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int win32_show_cursor (int) ;

__attribute__((used)) static void gfx_ctx_gdi_show_mouse(void *data, bool state)
{
   (void)data;
   win32_show_cursor(state);
}
