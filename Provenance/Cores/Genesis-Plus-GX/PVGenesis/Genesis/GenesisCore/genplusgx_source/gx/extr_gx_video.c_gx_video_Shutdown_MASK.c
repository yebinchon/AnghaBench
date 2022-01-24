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
 int /*<<< orphan*/  COLOR_BLACK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ screenshot ; 
 scalar_t__ texturemem ; 
 int /*<<< orphan*/  vmode ; 
 size_t whichfb ; 
 int /*<<< orphan*/ * xfb ; 

void FUNC5(void)
{
  if (texturemem) FUNC4(texturemem);
  if (screenshot) FUNC4(screenshot);
  FUNC0();
  FUNC1(vmode, xfb[whichfb], COLOR_BLACK);
  FUNC2();
  FUNC3();
}