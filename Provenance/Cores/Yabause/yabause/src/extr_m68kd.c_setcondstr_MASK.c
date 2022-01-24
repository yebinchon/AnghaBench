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
typedef  int u16 ;

/* Variables and functions */
 int FUNC0 (char*,char*) ; 

__attribute__((used)) static int FUNC1(u16 cond, char *outstring)
{
   switch (cond & 0xF)
   {
      case 0x0:
         // True
         return FUNC0(outstring, "t ");
      case 0x1:
         // False
         return FUNC0(outstring, "f ");
      case 0x2:
         // High
         return FUNC0(outstring, "hi");
      case 0x3:
         // Low or Same
         return FUNC0(outstring, "ls");
      case 0x4:
         // Carry Clear
         return FUNC0(outstring, "cc");
      case 0x5:
         // Carry Set
         return FUNC0(outstring, "cs");
      case 0x6:
         // Not Equal
         return FUNC0(outstring, "ne");
      case 0x7:
         // Equal
         return FUNC0(outstring, "eq");
      case 0x8:
         // Overflow Clear
         return FUNC0(outstring, "vc");
      case 0x9:
         // Overflow Set
         return FUNC0(outstring, "vs");
      case 0xA:
         // Plus
         return FUNC0(outstring, "pl");
      case 0xB:
         // Minus
         return FUNC0(outstring, "mi");
      case 0xC:
         // Greater or Equal
         return FUNC0(outstring, "ge");
      case 0xD:
         // Less Than
         return FUNC0(outstring, "lt");
      case 0xE:
         // Greater Than
         return FUNC0(outstring, "gt");
      case 0xF:
         // Less or Equal
         return FUNC0(outstring, "le");
      default: break;
   }

   return 0;
}