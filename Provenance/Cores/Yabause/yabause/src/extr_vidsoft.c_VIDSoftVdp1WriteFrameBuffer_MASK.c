#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  vdp1backframebuffer ; 

void FUNC6(u32 type, u32 addr, u32 val)
{
   FUNC5();

   switch (type)
   {
   case 0:
      FUNC2(vdp1backframebuffer, addr, val);
      break;
   case 1:
#ifndef WORDS_BIGENDIAN
      val = FUNC0(val);
#endif
      FUNC4(vdp1backframebuffer, addr, val);
      break;
   case 2:
#ifndef WORDS_BIGENDIAN
      val = FUNC1(val);
#endif
      val = (val & 0xffff) << 16 | (val & 0xffff0000) >> 16;
      FUNC3(vdp1backframebuffer, addr, val);
      break;
   default:
      break;
   }
}