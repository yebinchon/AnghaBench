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
struct TYPE_2__ {int /*<<< orphan*/  v_columns; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESesc ; 
 int /*<<< orphan*/  gc_attr ; 
 int /*<<< orphan*/  gc_buffer_tab_stops ; 
 int /*<<< orphan*/ * gc_charset ; 
 size_t gc_charset_select ; 
 int /*<<< orphan*/  gc_hanging_cursor ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gc_scrreg_bottom ; 
 int /*<<< orphan*/  gc_scrreg_top ; 
 int /*<<< orphan*/  gc_vt100state ; 
 int /*<<< orphan*/  gc_wrap_mode ; 
 int /*<<< orphan*/  gc_x ; 
 int /*<<< orphan*/  gc_y ; 
 TYPE_1__ vinfo ; 

__attribute__((used)) static void 
FUNC3(unsigned char ch)
{
	switch (ch) {
	case '\a':		/* Beep			 */
        break;
	case 127:		/* Delete		 */
	case '\b':		/* Backspace		 */
		if (gc_hanging_cursor) {
			gc_hanging_cursor = 0;
		} else
			if (gc_x > 0) {
				gc_x--;
			}
		break;
	case '\t':		/* Tab			 */
		if (gc_buffer_tab_stops) while (gc_x < vinfo.v_columns && !FUNC0(++gc_x));

		if (gc_x >= vinfo.v_columns)
			gc_x = vinfo.v_columns-1;
		break;
	case 0x0b:
	case 0x0c:
	case '\n':		/* Line feed		 */
		if (gc_y >= gc_scrreg_bottom -1 ) {
			FUNC2(1, gc_scrreg_top, gc_scrreg_bottom);
			gc_y = gc_scrreg_bottom - 1;
		} else {
			gc_y++;
		}
		break;
	case '\r':		/* Carriage return	 */
		gc_x = 0;
		gc_hanging_cursor = 0;
		break;
	case 0x0e:  /* Select G1 charset (Control-N) */
		gc_charset_select = 1;
		break;
	case 0x0f:  /* Select G0 charset (Control-O) */
		gc_charset_select = 0;
		break;
	case 0x18 : /* CAN : cancel */
	case 0x1A : /* like cancel */
			/* well, i do nothing here, may be later */
		break;
	case '\033':		/* Escape		 */
		gc_vt100state = ESesc;
		gc_hanging_cursor = 0;
		break;
	default:
		if (ch >= ' ') {
			if (gc_hanging_cursor) {
				gc_x = 0;
				if (gc_y >= gc_scrreg_bottom -1 ) {
					FUNC2(1, gc_scrreg_top, gc_scrreg_bottom);
					gc_y = gc_scrreg_bottom - 1;
				} else {
					gc_y++;
				}
				gc_hanging_cursor = 0;
			}
			FUNC1(gc_x, gc_y, (ch >= 0x60 && ch <= 0x7f) ? ch + gc_charset[gc_charset_select]
								: ch, gc_attr);
			if (gc_x == vinfo.v_columns - 1) {
				gc_hanging_cursor = gc_wrap_mode;
			} else {
				gc_x++;
			}
		}
		break;
	}

}