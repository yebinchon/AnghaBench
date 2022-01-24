#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  exe_dir ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {char* FileName; void* Buffer; scalar_t__ Size; scalar_t__ LastAccess; int /*<<< orphan*/  SizeCompressed; int /*<<< orphan*/  Offset; } ;
typedef  TYPE_1__ HC ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ HAMCORE_CACHE_EXPIRES ; 
 int /*<<< orphan*/  HAMCORE_DIR_NAME ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int MAX_SIZE ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*,char*,int) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*) ; 
 scalar_t__ FUNC16 () ; 
 scalar_t__ FUNC17 (void*,scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int) ; 
 void* FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  hamcore ; 
 int /*<<< orphan*/  hamcore_io ; 

BUF *FUNC23(char *name)
{
	wchar_t tmp[MAX_SIZE];
	wchar_t exe_dir[MAX_SIZE];
	BUF *b;
	char filename[MAX_PATH];
	// Validate arguments
	if (name == NULL)
	{
		return NULL;
	}

	if (name[0] == '|')
	{
		name++;
	}

	if (name[0] == '/' || name[0] == '\\')
	{
		name++;
	}

	FUNC15(filename, sizeof(filename), name);

	FUNC11(filename, sizeof(filename), filename, "/", "\\", true);

	if (FUNC8())
	{
		return NULL;
	}

	// If the file exist in hamcore/ directory on the local disk, read it
	FUNC3(exe_dir, sizeof(exe_dir));

	FUNC18(tmp, sizeof(tmp), L"%s/%S/%S", exe_dir, HAMCORE_DIR_NAME, filename);

	b = FUNC10(tmp);
	if (b != NULL)
	{
		return b;
	}

	// Search from HamCore file system if it isn't found
	FUNC6(hamcore);
	{
		HC t, *c;
		UINT i;

		FUNC21(&t, sizeof(t));
		t.FileName = filename;
		c = FUNC12(hamcore, &t);

		if (c == NULL)
		{
			// File does not exist
			b = NULL;
		}
		else
		{
			// File exists
			if (c->Buffer != NULL)
			{
				// It is already loaded
				b = FUNC9();
				FUNC20(b, c->Buffer, c->Size);
				FUNC13(b, 0, 0);
				c->LastAccess = FUNC16();
			}
			else
			{
				// Read from a file is if it is not read
				if (FUNC1(hamcore_io, 0, c->Offset) == false)
				{
					// Failed to seek
					b = NULL;
				}
				else
				{
					// Read the compressed data
					void *data = FUNC7(c->SizeCompressed);
					if (FUNC0(hamcore_io, data, c->SizeCompressed) == false)
					{
						// Failed to read
						FUNC2(data);
						b = NULL;
					}
					else
					{
						// Expand
						c->Buffer = FUNC22(c->Size);
						if (FUNC17(c->Buffer, c->Size, data, c->SizeCompressed) != c->Size)
						{
							// Failed to expand
							FUNC2(data);
							FUNC2(c->Buffer);
							b = NULL;
						}
						else
						{
							// Successful
							FUNC2(data);
							b = FUNC9();
							FUNC20(b, c->Buffer, c->Size);
							FUNC13(b, 0, 0);
							c->LastAccess = FUNC16();
						}
					}
				}
			}
		}

		// Delete the expired cache
		for (i = 0;i < FUNC5(hamcore);i++)
		{
			HC *c = FUNC4(hamcore, i);

			if (c->Buffer != NULL)
			{
				if (((c->LastAccess + HAMCORE_CACHE_EXPIRES) <= FUNC16()) ||
					(FUNC14(c->FileName, "Li")))
				{
					FUNC2(c->Buffer);
					c->Buffer = NULL;
				}
			}
		}
	}
	FUNC19(hamcore);

	return b;
}