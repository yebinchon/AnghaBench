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
typedef  int pdso_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FinalizeLine ; 
 int /*<<< orphan*/ * FinalizeLine32xRGB555 ; 
 int /*<<< orphan*/ * FinalizeLine555 ; 
 int /*<<< orphan*/ * FinalizeLine8bit ; 
 int PAHW_32X ; 
#define  PDF_8BIT 129 
#define  PDF_RGB555 128 
 int PicoAHW ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int rendstatus_old ; 

void FUNC2(pdso_t which, int use_32x_line_mode)
{
  switch (which)
  {
    case PDF_8BIT:
      FinalizeLine = FinalizeLine8bit;
      break;

    case PDF_RGB555:
      if ((PicoAHW & PAHW_32X) && use_32x_line_mode)
        FinalizeLine = FinalizeLine32xRGB555;
      else
        FinalizeLine = FinalizeLine555;
      break;

    default:
      FinalizeLine = NULL;
      break;
  }
  FUNC0(which, use_32x_line_mode);
  FUNC1(which);
  rendstatus_old = -1;
}