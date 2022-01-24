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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int Width; int Height; scalar_t__ Vram; void* VramClut; int /*<<< orphan*/  ClutPSM; scalar_t__ Clut; int /*<<< orphan*/  PSM; } ;
typedef  TYPE_1__ GSTEXTURE ;
typedef  int /*<<< orphan*/  GSGLOBAL ;

/* Variables and functions */
 scalar_t__ GSKIT_ALLOC_ERROR ; 
 int /*<<< orphan*/  GSKIT_ALLOC_USERBUFFER ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(GSGLOBAL *gsGlobal, GSTEXTURE *texture)
{
   uint32_t size = FUNC0(texture->Width, texture->Height, texture->PSM);
   texture->Vram = FUNC1(gsGlobal, size, GSKIT_ALLOC_USERBUFFER);
   if(texture->Vram == GSKIT_ALLOC_ERROR) {
      FUNC2("VRAM Allocation Failed. Will not upload texture.\n");
   }

   if (texture->Clut) {
      /* Right now just supporting 16 x 16 = 256 colours */
      size = FUNC0(16, 16, texture->ClutPSM);
      texture->VramClut = FUNC1(gsGlobal, size , GSKIT_ALLOC_USERBUFFER);
   }
}