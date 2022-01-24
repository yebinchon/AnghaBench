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
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(u32 addr, u16 op, char *outstring)
{
   int size=2;

   outstring += FUNC3(outstring, "cmpi");
   outstring += FUNC2((op >> 6), outstring);
   outstring += FUNC3(outstring, " ");
   outstring += FUNC1(addr+size, op >> 6, &size, outstring);
   outstring += FUNC3(outstring, ", ");
   FUNC0(addr+size, op, &size, outstring);
   return size;
}