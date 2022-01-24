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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int NUMSOUNDBLOCKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int soundbufsize ; 
 int soundlen ; 
 int /*<<< orphan*/ * stereodata16 ; 

int FUNC3(int vertfreq)
{
   soundlen = 44100 / vertfreq;
   soundbufsize = soundlen * NUMSOUNDBLOCKS * 2 * 2;

   if (stereodata16)
      FUNC0(stereodata16);

   if ((stereodata16 = (u16 *)FUNC1(soundbufsize)) == NULL)
      return -1;

   FUNC2(stereodata16, 0, soundbufsize);
   return 0;
}