#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct LinkInfo {char* tex_w; char* tex_h; TYPE_2__* pass; } ;
struct TYPE_3__ {int type_x; char* scale_x; char* abs_x; int type_y; char* scale_y; char* abs_y; } ;
struct TYPE_4__ {scalar_t__ filter; TYPE_1__ fbo; } ;

/* Variables and functions */
 scalar_t__ RARCH_FILTER_LINEAR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
#define  RARCH_SCALE_ABSOLUTE 130 
#define  RARCH_SCALE_INPUT 129 
#define  RARCH_SCALE_VIEWPORT 128 

__attribute__((used)) static void FUNC1(const struct LinkInfo *info)
{
   FUNC0("[D3D9]: Render pass info:\n");
   FUNC0("\tTexture width: %u\n", info->tex_w);
   FUNC0("\tTexture height: %u\n", info->tex_h);

   FUNC0("\tScale type (X): ");

   switch (info->pass->fbo.type_x)
   {
      case RARCH_SCALE_INPUT:
         FUNC0("Relative @ %fx\n", info->pass->fbo.scale_x);
         break;

      case RARCH_SCALE_VIEWPORT:
         FUNC0("Viewport @ %fx\n", info->pass->fbo.scale_x);
         break;

      case RARCH_SCALE_ABSOLUTE:
         FUNC0("Absolute @ %u px\n", info->pass->fbo.abs_x);
         break;
   }

   FUNC0("\tScale type (Y): ");

   switch (info->pass->fbo.type_y)
   {
      case RARCH_SCALE_INPUT:
         FUNC0("Relative @ %fx\n", info->pass->fbo.scale_y);
         break;

      case RARCH_SCALE_VIEWPORT:
         FUNC0("Viewport @ %fx\n", info->pass->fbo.scale_y);
         break;

      case RARCH_SCALE_ABSOLUTE:
         FUNC0("Absolute @ %u px\n", info->pass->fbo.abs_y);
         break;
   }

   FUNC0("\tBilinear filter: %s\n",
         info->pass->filter == RARCH_FILTER_LINEAR ? "true" : "false");
}