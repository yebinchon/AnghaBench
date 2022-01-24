#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ flags; } ;
typedef  TYPE_1__ gfx_ctx_flags_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFX_CTX_FLAGS_SHADERS_CG ; 
 int /*<<< orphan*/  GFX_CTX_FLAGS_SHADERS_GLSL ; 
 int /*<<< orphan*/  GFX_CTX_FLAGS_SHADERS_HLSL ; 
 int /*<<< orphan*/  GFX_CTX_FLAGS_SHADERS_SLANG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

bool FUNC2(void)
{
   gfx_ctx_flags_t flags;
   flags.flags     = 0;
   FUNC1(&flags);

   return
      FUNC0(flags.flags, GFX_CTX_FLAGS_SHADERS_SLANG) ||
      FUNC0(flags.flags, GFX_CTX_FLAGS_SHADERS_GLSL)  ||
      FUNC0(flags.flags, GFX_CTX_FLAGS_SHADERS_CG)    ||
      FUNC0(flags.flags, GFX_CTX_FLAGS_SHADERS_HLSL);
}