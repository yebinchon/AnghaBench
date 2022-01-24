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
typedef  size_t uint16 ;

/* Variables and functions */
 int /*<<< orphan*/ ** lut ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(void)
{
  int bx, ax;

  /* Initialize layers priority pixel look-up tables */
  uint16 index;
  for (bx = 0; bx < 0x100; bx++)
  {
    for (ax = 0; ax < 0x100; ax++)
    {
      index = (bx << 8) | (ax);

      lut[0][index] = FUNC1(bx, ax);
      lut[1][index] = FUNC3(bx, ax);
      lut[2][index] = FUNC2(bx, ax);
      lut[3][index] = FUNC6(bx, ax);
      lut[4][index] = FUNC5(bx, ax);
      lut[5][index] = FUNC4(bx,ax);
    }
  }

  /* Initialize pixel color look-up tables */
  FUNC8();

  /* Make sprite pattern name index look-up table (Mode 5) */
  FUNC7();

  /* Make bitplane to pixel look-up table (Mode 4) */
  FUNC0();
}