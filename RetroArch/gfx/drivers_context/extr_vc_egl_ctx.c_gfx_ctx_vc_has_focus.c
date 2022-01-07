
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_egl_inited ;

__attribute__((used)) static bool gfx_ctx_vc_has_focus(void *data)
{
   (void)data;
   return g_egl_inited;
}
