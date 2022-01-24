#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int core_hw_context_enable; } ;
typedef  TYPE_1__ gfx_ctx_x_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFX_CTX_FLAGS_ADAPTIVE_VSYNC ; 
 int /*<<< orphan*/  GFX_CTX_FLAGS_GL_CORE_CONTEXT ; 
 int /*<<< orphan*/  GFX_CTX_FLAGS_MULTISAMPLING ; 
#define  GFX_CTX_NONE 130 
#define  GFX_CTX_OPENGL_API 129 
#define  GFX_CTX_OPENGL_ES_API 128 
 int x_adaptive_vsync ; 
 int x_api ; 
 int x_enable_msaa ; 

__attribute__((used)) static void FUNC1(void *data, uint32_t flags)
{
   gfx_ctx_x_data_t *x = (gfx_ctx_x_data_t*)data;

   switch (x_api)
   {
      case GFX_CTX_OPENGL_API:
      case GFX_CTX_OPENGL_ES_API:
         if (FUNC0(flags, GFX_CTX_FLAGS_ADAPTIVE_VSYNC))
               x_adaptive_vsync = true;
         if (FUNC0(flags, GFX_CTX_FLAGS_GL_CORE_CONTEXT))
            x->core_hw_context_enable = true;
         if (FUNC0(flags, GFX_CTX_FLAGS_MULTISAMPLING))
            x_enable_msaa = true;
         break;
      case GFX_CTX_NONE:
      default:
         break;
   }
}