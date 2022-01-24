#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int wchar_t ;
typedef  int /*<<< orphan*/  fullpath ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  dirname ;
typedef  int /*<<< orphan*/  datestr ;
typedef  int* UINT ;
struct TYPE_6__ {int* LastSavedDateStr; } ;
struct TYPE_5__ {int /*<<< orphan*/  wHour; int /*<<< orphan*/  wDay; int /*<<< orphan*/  wMonth; int /*<<< orphan*/  wYear; } ;
typedef  TYPE_1__ SYSTEMTIME ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_2__ CFG_RW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int* INFINITE ; 
 scalar_t__ FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,char*,int*,...) ; 
 scalar_t__ FUNC5 (int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int*) ; 

void FUNC7(CFG_RW *rw, FOLDER *f, wchar_t *original, UINT revision_number)
{
	wchar_t dirname[MAX_PATH];
	wchar_t filename[MAX_PATH];
	wchar_t fullpath[MAX_PATH];
	wchar_t datestr[MAX_PATH];
	SYSTEMTIME st;
	// Validate arguments
	if (f == NULL || rw == NULL)
	{
		return;
	}

	// Determine the directory name
	FUNC4(dirname, sizeof(dirname), L"@backup.%s", original[0] == L'@' ? original + 1 : original);

	// Determine the file name
	FUNC2(&st);
	FUNC4(datestr, sizeof(datestr), L"%04u%02u%02u%02u_%s",
		&st.wYear, st.wMonth, st.wDay, st.wHour, original[0] == L'@' ? original + 1 : original);

	if (revision_number == INFINITE)
	{
		FUNC6(filename, sizeof(filename), datestr);
	}
	else
	{
		FUNC4(filename, sizeof(filename), L"%08u_%s",
			revision_number, original[0] == L'@' ? original + 1 : original);
	}

	// Don't save if the date and time has not been changed
	if (FUNC5(datestr, rw->LastSavedDateStr) == 0)
	{
		return;
	}

	FUNC6(rw->LastSavedDateStr, sizeof(rw->LastSavedDateStr), datestr);

	// Check the existence of file name
	if (FUNC1(filename))
	{
		return;
	}

	// Create the directory
	FUNC3(dirname);

	// Save the file
	FUNC4(fullpath, sizeof(fullpath), L"%s/%s", dirname, filename);
	FUNC0(f, fullpath);
}