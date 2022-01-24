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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  IO ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

__attribute__((used)) static wchar_t *FUNC9(char *filename)
{
	IO *io;
	UINT size, usize;
	BYTE *utf8;
	wchar_t *wchars;

	// Validate arguments
	if (filename == NULL)
	{
		return NULL;
	}

	io = FUNC2(filename, false);
	if (io == NULL)
	{
		return NULL;
	}

	// Load the file
	size = FUNC4(io);
	utf8 = (BYTE*)FUNC6(size);
	FUNC3(io, (void*)utf8, size);
	FUNC1(io);

	usize = FUNC0(utf8, size);
	wchars = (wchar_t*)FUNC8(usize+sizeof(wchar_t));
	FUNC7(wchars, usize, utf8, size);
	FUNC5(utf8);

	return wchars;
}