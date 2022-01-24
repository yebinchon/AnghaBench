#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int v_columns; int v_rows; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_BOLD ; 
 int /*<<< orphan*/  ATTR_NONE ; 
 int /*<<< orphan*/  ATTR_REVERSE ; 
 int /*<<< orphan*/  ATTR_UNDER ; 
 int /*<<< orphan*/  COLOR_BACKGROUND ; 
 int /*<<< orphan*/  COLOR_FOREGROUND ; 
 int /*<<< orphan*/  ESgotpars ; 
 int /*<<< orphan*/  ESnormal ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  gc_attr ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  gc_hanging_cursor ; 
 unsigned int gc_numpars ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int,char,int /*<<< orphan*/ ) ; 
 int* gc_par ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  gc_relative_origin ; 
 int gc_scrreg_bottom ; 
 int gc_scrreg_top ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gc_vt100state ; 
 int gc_x ; 
 int gc_y ; 
 TYPE_1__ vinfo ; 

__attribute__((used)) static void 
FUNC6(unsigned char ch)
{
	unsigned int i;

	if (ch < ' ') {
		/* special case for vttest for handling cursor
		   movement in escape sequences */
		FUNC3(ch);
		gc_vt100state = ESgotpars;
		return;
	}
	gc_vt100state = ESnormal;
	switch (ch) {
	case 'A':		/* Up			 */
		gc_y -= gc_par[0] ? gc_par[0] : 1;
		if (gc_y < gc_scrreg_top)
			gc_y = gc_scrreg_top;
		break;
	case 'B':		/* Down			 */
		gc_y += gc_par[0] ? gc_par[0] : 1;
		if (gc_y >= gc_scrreg_bottom)
			gc_y = gc_scrreg_bottom - 1;
		break;
	case 'C':		/* Right		 */
		gc_x += gc_par[0] ? gc_par[0] : 1;
		if (gc_x >= vinfo.v_columns)
			gc_x = vinfo.v_columns-1;
		break;
	case 'D':		/* Left			 */
		if (gc_par[0] > gc_x)
			gc_x = 0;
		else if (gc_par[0])
			gc_x -= gc_par[0];
		else if (gc_x)
			--gc_x;
		break;
	case 'H':		/* Set cursor position	 */
	case 'f':
		gc_x = gc_par[1] ? gc_par[1] - 1 : 0;
		gc_y = gc_par[0] ? gc_par[0] - 1 : 0;
		if (gc_relative_origin)
			gc_y += gc_scrreg_top;
		gc_hanging_cursor = 0;
		break;
	case 'X':		/* clear p1 characters */
		if (gc_numpars) {
			for (i = gc_x; i < gc_x + gc_par[0]; i++)
				FUNC2(i, gc_y, ' ', ATTR_NONE);
		}
		break;
	case 'J':		/* Clear part of screen	 */
		FUNC1(gc_x, gc_y, 0, vinfo.v_rows, gc_par[0]);
		break;
	case 'K':		/* Clear part of line	 */
		FUNC0(gc_x, gc_y, gc_par[0]);
		break;
	case 'g':		/* tab stops	 	 */
		switch (gc_par[0]) {
			case 1:
			case 2:	/* reset tab stops */
				/* gc_reset_tabs(); */
				break;				
			case 3:	/* Clear every tabs */
				{
					for (i = 0; i <= vinfo.v_columns; i++)
						FUNC4(i, FALSE);
				}
				break;
			case 0:
				FUNC4(gc_x, FALSE);
				break;
		}
		break;
	case 'm':		/* Set attribute	 */
		for (i = 0; i < gc_numpars; i++) {
			switch (gc_par[i]) {
			case 0:
				gc_attr = ATTR_NONE;
				FUNC5(COLOR_BACKGROUND, FALSE);
				FUNC5(COLOR_FOREGROUND, TRUE );	
				break;
			case 1:
				gc_attr |= ATTR_BOLD;
				break;
			case 4:
				gc_attr |= ATTR_UNDER;
				break;
			case 7:
				gc_attr |= ATTR_REVERSE;
				break;
			case 22:
				gc_attr &= ~ATTR_BOLD;
				break;
			case 24:
				gc_attr &= ~ATTR_UNDER;
				break;
			case 27:
				gc_attr &= ~ATTR_REVERSE;
				break;
			case 5:
			case 25:	/* blink/no blink */
				break;
			default:
				if (gc_par[i] >= 30 && gc_par[i] <= 37)
					FUNC5(gc_par[i] - 30, TRUE);
				if (gc_par[i] >= 40 && gc_par[i] <= 47)
					FUNC5(gc_par[i] - 40, FALSE);
				break;
			}
		}
		break;
	case 'r':		/* Set scroll region	 */
		gc_x = gc_y = 0;
		/* ensure top < bottom, and both within limits */
		if ((gc_numpars > 0) && (gc_par[0] < vinfo.v_rows)) {
			gc_scrreg_top = gc_par[0] ? gc_par[0] - 1 : 0;
		} else {
			gc_scrreg_top = 0;
		}
		if ((gc_numpars > 1) && (gc_par[1] <= vinfo.v_rows) && (gc_par[1] > gc_par[0])) {
			gc_scrreg_bottom = gc_par[1];
			if (gc_scrreg_bottom > vinfo.v_rows)
				gc_scrreg_bottom = vinfo.v_rows;
		} else {
			gc_scrreg_bottom = vinfo.v_rows;
		}
		if (gc_relative_origin)
			gc_y = gc_scrreg_top;
		break;
	}

}