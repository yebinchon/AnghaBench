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
struct TYPE_2__ {int /*<<< orphan*/  v_rows; } ;

/* Variables and functions */
 int /*<<< orphan*/  EScharsize ; 
 int /*<<< orphan*/  ESnormal ; 
 int /*<<< orphan*/  ESsetG0 ; 
 int /*<<< orphan*/  ESsetG1 ; 
 int /*<<< orphan*/  ESsquare ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  gc_attr ; 
 int /*<<< orphan*/ * gc_charset ; 
 int /*<<< orphan*/ * gc_charset_save ; 
 int /*<<< orphan*/  gc_charset_select ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  gc_save_charset_s ; 
 int /*<<< orphan*/  gc_saveattr ; 
 int /*<<< orphan*/  gc_savex ; 
 int /*<<< orphan*/  gc_savey ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gc_scrreg_bottom ; 
 int /*<<< orphan*/  gc_scrreg_top ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gc_vt100state ; 
 int /*<<< orphan*/  gc_x ; 
 int /*<<< orphan*/  gc_y ; 
 TYPE_1__ vinfo ; 

__attribute__((used)) static void 
FUNC5(unsigned char ch)
{
	gc_vt100state = ESnormal;

	switch (ch) {
	case '[':
		gc_vt100state = ESsquare;
		break;
	case 'c':		/* Reset terminal 	 */
		FUNC1();
		FUNC0(gc_x, gc_y, 0, vinfo.v_rows, 2);
		gc_x = gc_y = 0;
		break;
	case 'D':		/* Line feed		 */
	case 'E':
		if (gc_y >= gc_scrreg_bottom -1) {
			FUNC3(1, gc_scrreg_top, gc_scrreg_bottom);
			gc_y = gc_scrreg_bottom - 1;
		} else {
			gc_y++;
		}
		if (ch == 'E') gc_x = 0;
		break;
	case 'H':		/* Set tab stop		 */
		FUNC4(gc_x, TRUE);
		break;
	case 'M':		/* Cursor up		 */
		if (gc_y <= gc_scrreg_top) {
			FUNC2(1, gc_scrreg_top, gc_scrreg_bottom);
			gc_y = gc_scrreg_top;
		} else {
			gc_y--;
		}
		break;
	case '>':
		FUNC1();
		break;
	case '7':		/* Save cursor		 */
		gc_savex = gc_x;
		gc_savey = gc_y;
		gc_saveattr = gc_attr;
		gc_save_charset_s = gc_charset_select;
		gc_charset_save[0] = gc_charset[0];
		gc_charset_save[1] = gc_charset[1];
		break;
	case '8':		/* Restore cursor	 */
		gc_x = gc_savex;
		gc_y = gc_savey;
		gc_attr = gc_saveattr;
		gc_charset_select = gc_save_charset_s;
		gc_charset[0] = gc_charset_save[0];
		gc_charset[1] = gc_charset_save[1];
		break;
	case 'Z':		/* return terminal ID */
		break;
	case '#':		/* change characters height */
		gc_vt100state = EScharsize;
		break;
	case '(':
		gc_vt100state = ESsetG0;
		break;
	case ')':		/* character set sequence */
		gc_vt100state = ESsetG1;
		break;
	case '=':
		break;
	default:
		/* Rest not supported */
		break;
	}

}