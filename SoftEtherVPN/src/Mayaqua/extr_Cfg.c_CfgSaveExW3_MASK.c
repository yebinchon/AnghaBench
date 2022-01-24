#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_9__ {int /*<<< orphan*/  OsType; } ;
struct TYPE_8__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_7__ {int /*<<< orphan*/  LashHash; } ;
typedef  int /*<<< orphan*/  IO ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_1__ CFG_RW ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 TYPE_3__* FUNC10 () ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 

bool FUNC15(CFG_RW *rw, FOLDER *f, wchar_t *name, UINT *written_size, bool write_binary)
{
	wchar_t tmp[MAX_SIZE];
	bool text = !write_binary;
	UCHAR hash[SHA1_SIZE];
	BUF *b;
	IO *o;
	bool ret = true;
	UINT dummy_int = 0;
	// Validate arguments
	if (name == NULL || f == NULL)
	{
		return false;
	}
	if (written_size == NULL)
	{
		written_size = &dummy_int;
	}

	// Convert to buffer
	b = FUNC0(f, text);
	if (b == NULL)
	{
		return false;
	}
	// Hash the contents
	FUNC12(hash, b->Buf, b->Size);

	// Compare the contents to be written with the content which was written last
	if (rw != NULL)
	{
		if (FUNC1(hash, rw->LashHash, SHA1_SIZE) == 0)
		{
			// Contents are not changed
			ret = false;
		}
		else
		{
			FUNC2(rw->LashHash, hash, SHA1_SIZE);
		}
	}

	if (ret || FUNC11(FUNC10()->OsType))
	{
		// Generate a temporary file name
		FUNC13(tmp, sizeof(tmp), L"%s.log", name);
		// Copy the file that currently exist to a temporary file
		// with appending the EOF
		FUNC4(name, tmp, true);

		// Save the new file
		o = FUNC5(name);
		if (o != NULL)
		{
			if (FUNC8(o, b->Buf, b->Size) == false)
			{
				// File saving failure
				FUNC3(o);
				FUNC6(name);
				FUNC7(tmp, name);

				if (rw != NULL)
				{
					FUNC14(rw->LashHash, sizeof(rw->LashHash));
				}
			}
			else
			{
				// Successful saving file
				FUNC3(o);

				// Delete the temporary file
				FUNC6(tmp);
			}
		}
		else
		{
			// File saving failure
			FUNC7(tmp, name);

			if (rw != NULL)
			{
				FUNC14(rw->LashHash, sizeof(rw->LashHash));
			}
		}
	}

	*written_size = b->Size;

	// Release memory 
	FUNC9(b);

	return ret;
}