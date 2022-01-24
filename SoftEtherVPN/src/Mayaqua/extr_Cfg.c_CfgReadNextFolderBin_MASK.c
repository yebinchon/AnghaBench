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
typedef  int /*<<< orphan*/  name ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
#define  ITEM_TYPE_BOOL 132 
#define  ITEM_TYPE_BYTE 131 
#define  ITEM_TYPE_INT 130 
#define  ITEM_TYPE_INT64 129 
#define  ITEM_TYPE_STRING 128 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (scalar_t__) ; 

void FUNC15(BUF *b, FOLDER *parent)
{
	char name[MAX_SIZE];
	FOLDER *f;
	UINT n, i;
	UINT size;
	UCHAR *buf;
	wchar_t *string;
	// Validate arguments
	if (b == NULL || parent == NULL)
	{
		return;
	}

	// Folder name
	FUNC11(b, name, sizeof(name));
	f = FUNC6(parent, name);

	// The number of the subfolder
	n = FUNC9(b);
	for (i = 0;i < n;i++)
	{
		// Subfolder
		FUNC15(b, f);
	}

	// The number of items
	n = FUNC9(b);
	for (i = 0;i < n;i++)
	{
		UINT type;

		// Name
		FUNC11(b, name, sizeof(name));
		// Type
		type = FUNC9(b);

		switch (type)
		{
		case ITEM_TYPE_INT:
			// int
			FUNC3(f, name, FUNC9(b));
			break;

		case ITEM_TYPE_INT64:
			// int64
			FUNC4(f, name, FUNC10(b));
			break;

		case ITEM_TYPE_BYTE:
			// data
			size = FUNC9(b);
			buf = FUNC14(size);
			FUNC8(b, buf, size);
			FUNC2(f, name, buf, size);
			FUNC7(buf);
			break;

		case ITEM_TYPE_STRING:
			// string
			size = FUNC9(b);
			buf = FUNC14(size + 1);
			FUNC8(b, buf, size);
			string = FUNC14(FUNC0(buf, FUNC12(buf)) + 4);
			FUNC13(string, 0, buf, FUNC12(buf));
			FUNC5(f, name, string);
			FUNC7(string);
			FUNC7(buf);
			break;

		case ITEM_TYPE_BOOL:
			// bool
			FUNC1(f, name, FUNC9(b) == 0 ? false : true);
			break;
		}
	}
}