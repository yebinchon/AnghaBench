#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  newfile ;
typedef  int /*<<< orphan*/  header ;
typedef  int /*<<< orphan*/  hash1 ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_9__ {int Size; scalar_t__ Buf; } ;
typedef  int /*<<< orphan*/  IO ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FILE_BEGIN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,void*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int MAX_SIZE ; 
 void* FUNC11 (int) ; 
 TYPE_1__* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * TAG_BINARY ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,void*,int) ; 

FOLDER *FUNC18(wchar_t *name)
{
	wchar_t tmp[MAX_SIZE];
	wchar_t newfile[MAX_SIZE];
	BUF *b;
	IO *o;
	UINT size;
	void *buf;
	FOLDER *f;
	bool delete_new = false;
	bool binary_file = false;
	UCHAR header[8];
	bool has_eof = false;
	// Validate arguments
	if (name == NULL)
	{
		return NULL;
	}

	// Generate a new file name
	FUNC16(newfile, sizeof(newfile), L"%s.new", name);
	// Generate a temporary file name
	FUNC16(tmp, sizeof(tmp), L"%s.log", name);

	// Read the new file if it exists
	o = FUNC5(newfile, false);
	if (o == NULL)
	{
		UINT size;
		// Read the temporary file
		o = FUNC5(tmp, false);

		if (o != NULL)
		{
			// Check the EOF
			size = FUNC8(o);
			if (size >= 2)
			{
				char c;

				if (FUNC7(o, FILE_BEGIN, size - 1) && FUNC6(o, &c, 1) && c == 0x1A && FUNC7(o, FILE_BEGIN, 0))
				{
					// EOF ok
					has_eof = true;
				}
				else
				{
					// No EOF: file is corrupted
					FUNC3(o);
					o = NULL;
				}
			}
		}
	}
	else
	{
		delete_new = true;
	}
	if (o == NULL)
	{
		// Read the original file if there is no temporary file
		o = FUNC5(name, false);
	}
	else
	{
		// Read the original file too if the size of temporary file is 0
		if (FUNC8(o) == 0)
		{
			FUNC3(o);
			o = FUNC5(name, false);
		}
	}
	if (o == NULL)
	{
		// Failed to read
		return NULL;
	}

	// Read into the buffer
	size = FUNC8(o);
	if (has_eof)
	{
		// Ignore EOF
		size -= 1;
	}
	buf = FUNC11(size);
	FUNC6(o, buf, size);
	b = FUNC12();
	FUNC17(b, buf, size);
	FUNC14(b, 0, 0);

	// Close the file
	FUNC3(o);

	if (delete_new)
	{
		// Delete the new file
		FUNC4(newfile);
	}

	// If the beginning 8 character of the buffer is "SEVPN_DB", it is binary file
	FUNC13(b, header, sizeof(header));
	if (FUNC2(header, TAG_BINARY, 8) == 0)
	{
		UCHAR hash1[SHA1_SIZE], hash2[SHA1_SIZE];
		binary_file = true;

		// Check the hash 
		FUNC13(b, hash1, sizeof(hash1));

		FUNC15(hash2, ((UCHAR *)b->Buf) + 8 + SHA1_SIZE, b->Size - 8 - SHA1_SIZE);

		if (FUNC2(hash1, hash2, SHA1_SIZE) != 0)
		{
			// Corrupted file
			FUNC10(b);
			return NULL;
		}
	}

	FUNC14(b, 0, 0);

	if (binary_file)
	{
		FUNC14(b, 8 + SHA1_SIZE, 0);
	}

	// Convert the buffer into a folder
	if (binary_file == false)
	{
		// Text mode
		f = FUNC1(b);
	}
	else
	{
		// Binary mode
		f = FUNC0(b);
	}

	// Memory release
	FUNC9(buf);
	FUNC10(b);

	FUNC4(newfile);

	return f;
}