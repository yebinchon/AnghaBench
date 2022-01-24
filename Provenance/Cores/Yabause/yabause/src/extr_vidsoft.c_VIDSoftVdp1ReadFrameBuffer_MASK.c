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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  vdp1backframebuffer ; 

void FUNC6(u32 type, u32 addr, void * out)
{
   u32 val;

   FUNC5();

   switch (type)
   {
   case 0:
      val = FUNC2(vdp1backframebuffer, addr);
      *(u8*)out = val;
      break;
   case 1:
      val = FUNC4(vdp1backframebuffer, addr);
#ifndef WORDS_BIGENDIAN
      val = FUNC0(val);
#endif
      *(u16*)out = val;
      break;
   case 2:
#if 0 //enable when burning rangers is fixed
      val = T1ReadLong(vdp1backframebuffer, addr);
#ifndef WORDS_BIGENDIAN
      val = BSWAP32(val);
#endif
      val = (val & 0xffff) << 16 | (val & 0xffff0000) >> 16;
      *(u32*)out = val;
#else
      *(u32*)out = 0;
#endif
      break;
   default:
      break;
   }
}