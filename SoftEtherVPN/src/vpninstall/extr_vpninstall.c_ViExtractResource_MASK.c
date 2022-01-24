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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/ * HRSRC ;
typedef  int /*<<< orphan*/ * HINSTANCE ;
typedef  int /*<<< orphan*/ * HGLOBAL ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOAD_LIBRARY_AS_DATAFILE ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 

BUF *FUNC10(char *exe, char *type, char *name)
{
	HINSTANCE h;
	HRSRC hr;
	HGLOBAL hg;
	UINT size;
	void *data;
	BUF *buf;
	// Validate arguments
	if (exe == NULL || type == NULL || name == NULL)
	{
		return NULL;
	}

	h = FUNC3(exe, NULL, LOAD_LIBRARY_AS_DATAFILE);
	if (h == NULL)
	{
		return NULL;
	}

	hr = FUNC0(h, name, type);
	if (hr == NULL)
	{
		FUNC1(h);
		return NULL;
	}

	hg = FUNC4(h, hr);
	if (hg == NULL)
	{
		FUNC1(h);
		return NULL;
	}

	size = FUNC8(h, hr);
	data = (void *)FUNC5(hg);

	buf = FUNC6();
	FUNC9(buf, data, size);

	FUNC2(hg);
	FUNC1(h);

	FUNC7(buf, 0, 0);

	return buf;
}