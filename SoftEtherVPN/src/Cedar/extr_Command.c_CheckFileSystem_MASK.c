#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  exe_dir ;
typedef  int /*<<< orphan*/  exe ;
typedef  size_t UINT ;
typedef  size_t UCHAR ;
struct TYPE_10__ {size_t Size; scalar_t__ Buf; } ;
struct TYPE_9__ {size_t NumFiles; TYPE_1__** File; } ;
struct TYPE_8__ {int /*<<< orphan*/  FileName; } ;
typedef  int /*<<< orphan*/  IO ;
typedef  TYPE_2__ DIRLIST ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (size_t*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int MAX_PATH ; 
 size_t* FUNC14 (size_t) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 TYPE_3__* FUNC17 (char*) ; 

bool FUNC18()
{
	bool ok = false;
	char exe[MAX_PATH];
	char exe_dir[MAX_PATH];
	DIRLIST *dirs;
	UINT i;

	FUNC13(exe, sizeof(exe));
	FUNC12(exe_dir, sizeof(exe_dir));

	dirs = FUNC2(exe_dir);
	for (i = 0;i < dirs->NumFiles;i++)
	{
		if (FUNC1(exe, dirs->File[i]->FileName))
		{
			ok = true;
			break;
		}
	}
	FUNC11(dirs);

	if (ok == false)
	{
		FUNC16("EnumDir Failed.\n");
		return false;
	}
	else
	{
		UINT size = 1234567;
		UCHAR *buf;
		IO *io;
#ifndef	OS_WIN32
		wchar_t *filename = L"/tmp/vpn_checker_tmp";
#else	// OS_WIN32
		wchar_t filename[MAX_PATH];
		CombinePathW(filename, sizeof(filename), MsGetMyTempDirW(), L"vpn_checker_tmp");
#endif	// OS_WIN32

		buf = FUNC14(size);
		for (i = 0;i < size;i++)
		{
			buf[i] = i % 256;
		}

		io = FUNC4(filename);
		if (io == NULL)
		{
			FUNC16("FileCreate Failed.\n");
			FUNC9(buf);
			return false;
		}
		else
		{
			FUNC8(io, buf, size);
			FUNC9(buf);
			FUNC3(io);

			io = FUNC6(filename, false);
			if (FUNC7(io) != 1234567)
			{
				FUNC16("FileSize Failed.\n");
				FUNC3(io);
				return false;
			}
			else
			{
				BUF *b;

				FUNC3(io);
				b = FUNC17(filename);
				if(b == NULL)
				{
					return false;
				}

				for (i = 0;i < b->Size;i++)
				{
					UCHAR c = ((UCHAR *)b->Buf)[i];

					if (c != (i % 256))
					{
						FUNC16("FileToBuf Failed.\n");
						FUNC10(b);
						return false;
					}
				}

				FUNC10(b);
			}
		}

		FUNC5(filename);
	}

	return ok;
}