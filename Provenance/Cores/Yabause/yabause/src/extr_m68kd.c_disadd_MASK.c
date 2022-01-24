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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

__attribute__((used)) static int FUNC3(u32 addr, u16 op, char *outstring)
{
   int size=2;

   outstring += FUNC2(outstring, "add");
   outstring += FUNC1(op >> 6, outstring);
   outstring += FUNC2(outstring, "  ");

   if (op & 0x100)
   {
      // Dn, <ea>
      outstring += FUNC2(outstring, "d%d, ", (op >> 9) & 7);
      FUNC0(addr+size, op, &size, outstring);
   }
   else
   {
      // <ea>, Dn
      outstring += FUNC0(addr+size, op, &size, outstring);
      FUNC2(outstring, ", d%d", (op >> 9) & 7);
   }

   return size;
}