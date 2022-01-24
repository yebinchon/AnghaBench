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
 char* ID_OPHANDLER_NAME ; 
 int /*<<< orphan*/  MAX_NAME_LENGTH ; 
 int /*<<< orphan*/  MAX_SPEC_EA_LENGTH ; 
 int /*<<< orphan*/  MAX_SPEC_PROC_LENGTH ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (char*,char*) ; 

int FUNC5(char* src, char* name, int* size, char* spec_proc, char* spec_ea)
{
	char* ptr = FUNC4(src, ID_OPHANDLER_NAME);

	if(ptr == NULL)
		return 0;

	ptr += FUNC3(ID_OPHANDLER_NAME) + 1;

	ptr += FUNC1(name, ptr, ',', MAX_NAME_LENGTH);
	if(*ptr != ',') return 0;
	ptr++;
	ptr += FUNC2(ptr);

	*size = FUNC0(ptr);
	ptr = FUNC4(ptr, ",");
	if(ptr == NULL) return 0;
    ptr++;
	ptr += FUNC2(ptr);

	ptr += FUNC1(spec_proc, ptr, ',', MAX_SPEC_PROC_LENGTH);
	if(*ptr != ',') return 0;
	ptr++;
	ptr += FUNC2(ptr);

	ptr += FUNC1(spec_ea, ptr, ')', MAX_SPEC_EA_LENGTH);
	if(*ptr != ')') return 0;
	ptr++;
	ptr += FUNC2(ptr);

	return 1;
}