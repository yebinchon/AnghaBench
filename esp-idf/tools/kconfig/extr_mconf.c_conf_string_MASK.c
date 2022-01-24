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
struct menu {int /*<<< orphan*/  sym; } ;

/* Variables and functions */
#define  KEY_ESC 131 
#define  S_HEX 130 
#define  S_INT 129 
#define  S_STRING 128 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  dialog_input_result ; 
 int FUNC2 (char*,char const*,int,int,int /*<<< orphan*/ ) ; 
 char* inputbox_instructions_hex ; 
 char* inputbox_instructions_int ; 
 char* inputbox_instructions_string ; 
 char* FUNC3 (struct menu*) ; 
 int /*<<< orphan*/  FUNC4 (struct menu*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct menu *menu)
{
	const char *prompt = FUNC3(menu);

	while (1) {
		int res;
		const char *heading;

		switch (FUNC7(menu->sym)) {
		case S_INT:
			heading = FUNC0(inputbox_instructions_int);
			break;
		case S_HEX:
			heading = FUNC0(inputbox_instructions_hex);
			break;
		case S_STRING:
			heading = FUNC0(inputbox_instructions_string);
			break;
		default:
			heading = FUNC0("Internal mconf error!");
		}
		FUNC1();
		res = FUNC2(prompt ? FUNC0(prompt) : FUNC0("Main Menu"),
				      heading, 10, 75,
				      FUNC6(menu->sym));
		switch (res) {
		case 0:
			if (FUNC8(menu->sym, dialog_input_result))
				return;
			FUNC5(NULL, FUNC0("You have made an invalid entry."), 5, 43);
			break;
		case 1:
			FUNC4(menu);
			break;
		case KEY_ESC:
			return;
		}
	}
}