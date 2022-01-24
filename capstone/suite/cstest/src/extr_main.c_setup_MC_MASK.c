#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  csh ;
struct TYPE_4__ {int value; int /*<<< orphan*/  str; } ;
struct TYPE_3__ {int /*<<< orphan*/  second_value; int /*<<< orphan*/  first_value; int /*<<< orphan*/  str; } ;

/* Variables and functions */
 scalar_t__ CS_ERR_OK ; 
#define  CS_MODE_16 130 
#define  CS_MODE_64 129 
#define  CS_MODE_THUMB 128 
 int /*<<< orphan*/  NUMARCH ; 
 int NUMMODE ; 
 int NUMOPTION ; 
 int /*<<< orphan*/  arches ; 
 int counter ; 
 scalar_t__ FUNC0 (int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ e_flag ; 
 int failed_setup ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char** list_lines ; 
 scalar_t__ FUNC5 (int) ; 
 int mc_mode ; 
 TYPE_2__* modes ; 
 TYPE_1__* options ; 
 int size_lines ; 
 char** FUNC6 (char*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(void **state)
{
	csh *handle;
	char **list_params;	
	int size_params;
	int arch, mode;
	int i, index, tmp_counter;

	if (failed_setup) {
		FUNC2(stderr, "[  ERROR   ] --- Invalid file to setup\n");
		return -1;
	}

	tmp_counter = 0;
	while (tmp_counter < size_lines && list_lines[tmp_counter][0] != '#')
		tmp_counter++;

	list_params = FUNC6(list_lines[tmp_counter] + 2, ", ", &size_params);
	if (size_params != 3) {
		FUNC2(stderr, "[  ERROR   ] --- Invalid options ( arch, mode, option )\n");
		failed_setup = 1;
		return -1;
	}

	arch = FUNC4(arches, NUMARCH, list_params[0]);
	if (!FUNC7(list_params[0], "CS_ARCH_ARM64")) 
		mc_mode = 2;
	else 
		mc_mode = 1;

	mode = 0;
	for (i = 0; i < NUMMODE; ++i) {
		if (FUNC9(list_params[1], modes[i].str)) {
			mode += modes[i].value;
			switch (modes[i].value) {
				case CS_MODE_16:
					mc_mode = 0;
					break;
				case CS_MODE_64:
					mc_mode = 2;
					break;
				case CS_MODE_THUMB:
					mc_mode = 1;
					break;
				default:
					break;
			}
		}
	}

	if (arch == -1) {
		FUNC2(stderr, "[  ERROR   ] --- Arch is not supported!\n");
		failed_setup = 1;
		return -1;
	}

	handle = (csh *)FUNC5(sizeof(csh));
	if(FUNC0(arch, mode, handle) != CS_ERR_OK) {
		FUNC2(stderr, "[  ERROR   ] --- Cannot initialize capstone\n");
		failed_setup = 1;
		return -1;
	}
	
	for (i = 0; i < NUMOPTION; ++i) {
		if (FUNC9(list_params[2], options[i].str)) {
			if (FUNC1(*handle, options[i].first_value, options[i].second_value) != CS_ERR_OK) {
				FUNC2(stderr, "[  ERROR   ] --- Option is not supported for this arch/mode\n");
				failed_setup = 1;
				return -1;
			}
		}
	}

	*state = (void *)handle;
	counter++;
	if (e_flag == 0)
		while (counter < size_lines && FUNC8(list_lines[counter], "0x", 2))
			counter++;
	else
		while (counter < size_lines && FUNC8(list_lines[counter], "// 0x", 5))
			counter++;

	FUNC3(list_params, size_params);
	return 0;
}