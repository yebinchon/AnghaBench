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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  Vdp1 ;
struct TYPE_3__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ IOCheck_struct ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ Vdp1Ram ; 
 scalar_t__ Vdp1Regs ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*,int,int,int /*<<< orphan*/ *) ; 

int FUNC4(FILE *fp)
{
   int offset;
   IOCheck_struct check = { 0, 0 };
#ifdef IMPROVED_SAVESTATES
   int i = 0;
   u8 back_framebuffer[0x40000] = { 0 };
#endif

   offset = FUNC1(fp, "VDP1", 1);

   // Write registers
   FUNC3(&check, (void *)Vdp1Regs, sizeof(Vdp1), 1, fp);

   // Write VDP1 ram
   FUNC3(&check, (void *)Vdp1Ram, 0x80000, 1, fp);

#ifdef IMPROVED_SAVESTATES
   for (i = 0; i < 0x40000; i++)
      back_framebuffer[i] = Vdp1FrameBufferReadByte(i);

   ywrite(&check, (void *)back_framebuffer, 0x40000, 1, fp);
#endif
   return FUNC0(fp, offset);
}