#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  str_size ;
typedef  int /*<<< orphan*/  num ;
typedef  int /*<<< orphan*/  header ;
typedef  int /*<<< orphan*/  exe_dir ;
typedef  scalar_t__ UINT ;
struct TYPE_4__ {char Size; char SizeCompressed; char Offset; int /*<<< orphan*/  FileName; } ;
typedef  TYPE_1__ HC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CompareHamcore ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  HAMCORE_FILE_NAME ; 
 int /*<<< orphan*/  HAMCORE_FILE_NAME_2 ; 
 int /*<<< orphan*/  HAMCORE_HEADER_DATA ; 
 int HAMCORE_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int MAX_PATH ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 TYPE_1__* FUNC14 (int) ; 
 int /*<<< orphan*/  hamcore ; 
 int /*<<< orphan*/ * hamcore_io ; 

void FUNC15()
{
	wchar_t tmp[MAX_PATH];
	wchar_t tmp2[MAX_PATH];
	wchar_t exe_dir[MAX_PATH];
	UINT i, num;
	char header[HAMCORE_HEADER_SIZE];

	hamcore = FUNC11(CompareHamcore);

	if (FUNC9())
	{
		return;
	}

	FUNC7(exe_dir, sizeof(exe_dir));
	FUNC12(tmp, sizeof(tmp), L"%s/%S", exe_dir, HAMCORE_FILE_NAME);

	FUNC12(tmp2, sizeof(tmp2), L"%s/%S", exe_dir, HAMCORE_FILE_NAME_2);

	// If there is _hamcore.se2, overwrite it yo the hamcore.se2 
	FUNC6(tmp2, tmp);

	// Read if there is a file hamcore.se2
	hamcore_io = FUNC4(tmp, false);
	if (hamcore_io == NULL)
	{
		// Look in other locations if it isn't found
#ifdef	OS_WIN32
		UniFormat(tmp, sizeof(tmp), L"%S/%S", MsGetSystem32Dir(), HAMCORE_FILE_NAME);
#else	// OS_WIN32
		FUNC12(tmp, sizeof(tmp), L"/bin/%S", HAMCORE_FILE_NAME);
#endif	// OS_WIN32

		hamcore_io = FUNC4(tmp, false);
		if (hamcore_io == NULL)
		{
			return;
		}
	}

	// Read the file header
	FUNC13(header, sizeof(header));
	FUNC5(hamcore_io, header, HAMCORE_HEADER_SIZE);

	if (FUNC0(header, HAMCORE_HEADER_DATA, HAMCORE_HEADER_SIZE) != 0)
	{
		// Invalid header
		FUNC3(hamcore_io);
		hamcore_io = NULL;
		return;
	}

	// The number of the File
	num = 0;
	FUNC5(hamcore_io, &num, sizeof(num));
	num = FUNC2(num);
	for (i = 0;i < num;i++)
	{
		// File name
		char tmp[MAX_SIZE];
		UINT str_size = 0;
		HC *c;

		FUNC5(hamcore_io, &str_size, sizeof(str_size));
		str_size = FUNC2(str_size);
		if (str_size >= 1)
		{
			str_size--;
		}

		FUNC13(tmp, sizeof(tmp));
		FUNC5(hamcore_io, tmp, str_size);

		c = FUNC14(sizeof(HC));
		c->FileName = FUNC1(tmp);

		FUNC5(hamcore_io, &c->Size, sizeof(UINT));
		c->Size = FUNC2(c->Size);

		FUNC5(hamcore_io, &c->SizeCompressed, sizeof(UINT));
		c->SizeCompressed = FUNC2(c->SizeCompressed);

		FUNC5(hamcore_io, &c->Offset, sizeof(UINT));
		c->Offset = FUNC2(c->Offset);

		FUNC8(hamcore, c);
	}
}