#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* coreTexture; int /*<<< orphan*/  interface_version; int /*<<< orphan*/  interface_type; } ;
struct TYPE_5__ {void* coreTexture; TYPE_1__ iface; void* menuTexture; int /*<<< orphan*/  gsGlobal; } ;
typedef  TYPE_2__ ps2_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  RETRO_HW_RENDER_INTERFACE_GSKIT_PS2 ; 
 int /*<<< orphan*/  RETRO_HW_RENDER_INTERFACE_GSKIT_PS2_VERSION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 () ; 

__attribute__((used)) static void FUNC2(ps2_video_t *ps2)
{
   ps2->gsGlobal = FUNC0();
   ps2->menuTexture = FUNC1();
   ps2->coreTexture = FUNC1();

   /* Used for cores that supports palette */
   ps2->iface.interface_type = RETRO_HW_RENDER_INTERFACE_GSKIT_PS2;
   ps2->iface.interface_version = RETRO_HW_RENDER_INTERFACE_GSKIT_PS2_VERSION;
   ps2->iface.coreTexture = ps2->coreTexture;
}