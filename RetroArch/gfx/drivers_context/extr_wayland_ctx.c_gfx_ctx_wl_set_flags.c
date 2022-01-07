
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int core_hw_context_enable; } ;
typedef TYPE_1__ gfx_ctx_wayland_data_t ;


 scalar_t__ BIT32_GET (int ,int ) ;
 int GFX_CTX_FLAGS_GL_CORE_CONTEXT ;

__attribute__((used)) static void gfx_ctx_wl_set_flags(void *data, uint32_t flags)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;
   if (BIT32_GET(flags, GFX_CTX_FLAGS_GL_CORE_CONTEXT))
      wl->core_hw_context_enable = 1;
}
