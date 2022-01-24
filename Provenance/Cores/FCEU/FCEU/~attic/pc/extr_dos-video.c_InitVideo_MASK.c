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
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int FCEUDvmode ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  G320x200x256 ; 
 int ScreenLoc ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int vidready ; 

int FUNC5(void)
{
 vidready=0;
 switch(FCEUDvmode)
 {
  default:
  case 1:
  case 2:
  case 3:
  case 6:
  case 8:
         FUNC4(G320x200x256);
	 vidready|=1;
         ScreenLoc=0xa0000;
         FUNC3(FCEUDvmode);
         FUNC2();
         FUNC0(ScreenLoc, 128, 256*256);
         break;
 }
 vidready|=2;
 FUNC1();
 return 1;
}