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
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

__attribute__((used)) static char *FUNC1(char *outstring, u16 pan)
{
   if (pan == 0x0F)
   {
      FUNC0(outstring, "Left = -MAX dB, Right = -0 dB\r\n");
   }
   else if (pan == 0x1F)
   {
      FUNC0(outstring, "Left = -0 dB, Right = -MAX dB\r\n");
   }
   else
   {
      FUNC0(outstring, "Left = -%d dB, Right = -%d dB\r\n", (pan & 0xF) * 3, (pan >> 4) * 3);
   }

   return outstring;
}