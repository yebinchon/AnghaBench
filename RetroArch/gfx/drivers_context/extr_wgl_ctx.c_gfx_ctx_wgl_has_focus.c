
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int win32_has_focus () ;

__attribute__((used)) static bool gfx_ctx_wgl_has_focus(void *data)
{
   return win32_has_focus();
}
