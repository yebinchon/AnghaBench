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
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,char const*,int,int,int) ; 
 int FUNC4 (char*) ; 
 void FUNC5 (char*,int,void*) ; 
 void FUNC6 (char*,int,void*) ; 

__attribute__((used)) static int FUNC7(int fg, int bg, int x, int y, int width,
                        char const *title, int start_value, int max_value,
                        void (*label_fun)(char *label, int value, void *user_data),
                        void *user_data)
{
	enum { larrow = 126,
	       rarrow = 127,
	       bar = 18 };
	int i;
	int value = start_value;
	char label[11];
	int label_length;

	if (value < 0)
		value = 0;
	else if (value > max_value)
		value = max_value;
	FUNC0(fg, bg, x, y, x + 1 + width, y + 2);
	
	FUNC3(bg, fg, title, x + 1, y, width);
	FUNC2(fg, bg, larrow, x + 1, y + 1);
	FUNC2(fg, bg, rarrow, x + width, y + 1);

	for (;;) {
		int ascii;
		for (i = x + 2; i < x + width; ++i)
			FUNC2(fg, bg, bar, i, y + 1);
		(*label_fun)(label, value, user_data);
		label_length = FUNC4(label);
		FUNC3(bg, fg, label,
		      max_value == 0 ? x + 2 + (width - label_length - 2) / 2
		                     : x + 2 + (width - label_length - 2) * value / max_value,
		      y + 1, label_length);
		ascii = FUNC1();
		switch (ascii) {
			case 0x1c:				/* Up */
				value = 0;
				break;
			case 0x1d:				/* Down */
				value = max_value;
				break;
			case 0x1e:				/* Left */
				if (value > 0)
					--value;
				break;
			case 0x1f:				/* Right */
				if (value < max_value)
					++value;
				break;
			case 0x1b:				/* Esc=Cancel */
				/* Restore original state if label_fun causes any side effects. */
				(*label_fun)(label, start_value, user_data);
				return -1;
			case 0x7e:				/* Backspace */
				value = start_value;
				if (value < 0)
					value = 0;
				else if (value > max_value)
					value = max_value;
				break;
			case 0x9b:				/* Return=Select */
				return value;
		}
	}
	return -1;
}