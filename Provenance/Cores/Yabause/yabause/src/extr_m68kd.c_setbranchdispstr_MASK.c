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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
typedef  scalar_t__ s8 ;
typedef  scalar_t__ s32 ;
typedef  scalar_t__ s16 ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (char*,char*,unsigned int) ; 

__attribute__((used)) static int FUNC2(u32 addr, u16 op, int *addsize, char *outstring)
{
   if ((op & 0xFF) == 0xFF)
   {
      // 32-bit displacement
      *addsize += 4;
      return FUNC1(outstring, ".l   %X", (unsigned int)(addr + ((FUNC0(addr) << 16) |  FUNC0(addr+2))));
   }
   else if ((op & 0xFF) == 0x00)
   {
      // 16-bit displacement
      *addsize += 2;
      return FUNC1(outstring, ".w   %X", (unsigned int)((s32)addr + (s32)(s16)FUNC0(addr)));
   }

   // 8-bit displacement
   return FUNC1(outstring, ".s   %X", (unsigned int)((s32)addr + (s32)(s8)(op & 0xFF)));
}