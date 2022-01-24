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

__attribute__((used)) static char *FUNC1(char *outstring, u16 level)
{
   if (level == 0)
   {
      FUNC0(outstring, "-MAX dB\r\n");
   }
   else
   {
      FUNC0(outstring, "-%d dB\r\n", (7-level) *  6);
   }

   return outstring;
}