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
 int COLOR_GREEN ; 
 int COLOR_MAGENTA ; 
 int COLOR_RED ; 
 int COLOR_YELLOW ; 
 int /*<<< orphan*/  DIALOG_BOX ; 
 int /*<<< orphan*/  DIALOG_MENU_BACK ; 
 int /*<<< orphan*/  DIALOG_MENU_FORE ; 
 int /*<<< orphan*/  DIALOG_TEXT ; 
 int /*<<< orphan*/  FUNCTION_HIGHLIGHT ; 
 int /*<<< orphan*/  FUNCTION_TEXT ; 
 int /*<<< orphan*/  INPUT_BOX ; 
 int /*<<< orphan*/  INPUT_FIELD ; 
 int /*<<< orphan*/  INPUT_HEADING ; 
 int /*<<< orphan*/  INPUT_TEXT ; 
 int /*<<< orphan*/  MAIN_HEADING ; 
 int /*<<< orphan*/  MAIN_MENU_BACK ; 
 int /*<<< orphan*/  MAIN_MENU_BOX ; 
 int /*<<< orphan*/  MAIN_MENU_FORE ; 
 int /*<<< orphan*/  MAIN_MENU_GREY ; 
 int /*<<< orphan*/  MAIN_MENU_HEADING ; 
 int /*<<< orphan*/  NORMAL ; 
 int /*<<< orphan*/  SCROLLWIN_BOX ; 
 int /*<<< orphan*/  SCROLLWIN_HEADING ; 
 int /*<<< orphan*/  SCROLLWIN_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0(NORMAL, -1, -1);
	FUNC0(MAIN_HEADING, COLOR_MAGENTA, -1);

	/* FORE is for the selected item */
	FUNC0(MAIN_MENU_FORE, -1, -1);
	/* BACK for all the rest */
	FUNC0(MAIN_MENU_BACK, -1, -1);
	FUNC0(MAIN_MENU_GREY, -1, -1);
	FUNC0(MAIN_MENU_HEADING, COLOR_GREEN, -1);
	FUNC0(MAIN_MENU_BOX, COLOR_YELLOW, -1);

	FUNC0(SCROLLWIN_TEXT, -1, -1);
	FUNC0(SCROLLWIN_HEADING, COLOR_GREEN, -1);
	FUNC0(SCROLLWIN_BOX, COLOR_YELLOW, -1);

	FUNC0(DIALOG_TEXT, -1, -1);
	FUNC0(DIALOG_BOX, COLOR_YELLOW, -1);
	FUNC0(DIALOG_MENU_BACK, COLOR_YELLOW, -1);
	FUNC0(DIALOG_MENU_FORE, COLOR_RED, -1);

	FUNC0(INPUT_BOX, COLOR_YELLOW, -1);
	FUNC0(INPUT_HEADING, COLOR_GREEN, -1);
	FUNC0(INPUT_TEXT, -1, -1);
	FUNC0(INPUT_FIELD, -1, -1);

	FUNC0(FUNCTION_HIGHLIGHT, -1, -1);
	FUNC0(FUNCTION_TEXT, COLOR_YELLOW, -1);
}