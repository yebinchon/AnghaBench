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

/* Variables and functions */
 int /*<<< orphan*/  CHEATTYPE_BYTEWRITE ; 
 int /*<<< orphan*/  CHEATTYPE_ENABLE ; 
 int /*<<< orphan*/  CHEATTYPE_WORDWRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,unsigned long*,unsigned short*) ; 

int FUNC2(const char *code)
{
   unsigned long addr;
   unsigned short val;
   FUNC1(code, "%08lX %04hX", &addr, &val);
   switch (addr >> 28)
   {
      case 0x0:
         // One time word write(fix me)
         return -1;
      case 0x1:
         return FUNC0(CHEATTYPE_WORDWRITE, addr & 0x0FFFFFFF, val);
      case 0x3:
         return FUNC0(CHEATTYPE_BYTEWRITE, addr & 0x0FFFFFFF, val);
      case 0xD:
         return FUNC0(CHEATTYPE_ENABLE, addr & 0x0FFFFFFF, val);
      default: return -1;
   }

   return 0;
}