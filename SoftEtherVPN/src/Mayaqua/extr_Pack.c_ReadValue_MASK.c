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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  VALUE ;
typedef  int UINT ;
typedef  char BYTE ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int MAX_VALUE_SIZE ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (void*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int) ; 
#define  VALUE_DATA 132 
#define  VALUE_INT 131 
#define  VALUE_INT64 130 
#define  VALUE_STR 129 
#define  VALUE_UNISTR 128 
 char* FUNC12 (int /*<<< orphan*/ ) ; 

VALUE *FUNC13(BUF *b, UINT type)
{
	UINT len;
	BYTE *u;
	void *data;
	char *str;
	wchar_t *unistr;
	UINT unistr_size;
	UINT size;
	UINT u_size;
	VALUE *v = NULL;
	// Validate arguments
	if (b == NULL)
	{
		return NULL;
	}

	// Data item
	switch (type)
	{
	case VALUE_INT:			// Integer
		v = FUNC5(FUNC9(b));
		break;
	case VALUE_INT64:
		v = FUNC4(FUNC10(b));
		break;
	case VALUE_DATA:		// Data
		size = FUNC9(b);
		if (size > MAX_VALUE_SIZE)
		{
			// Size over
			break;
		}
		data = FUNC2(size);
		if (FUNC8(b, data, size) != size)
		{
			// Read failure
			FUNC1(data);
			break;
		}
		v = FUNC3(data, size);
		FUNC1(data);
		break;
	case VALUE_STR:			// ANSI string
		len = FUNC9(b);
		if (len > (MAX_VALUE_SIZE - 1))
		{
			// Size over
			break;
		}
		str = FUNC2(len + 1);
		// String body
		if (FUNC8(b, str, len) != len)
		{
			// Read failure
			FUNC1(str);
			break;
		}
		str[len] = 0;
		v = FUNC6(str);
		FUNC1(str);
		break;
	case VALUE_UNISTR:		// Unicode string
		u_size = FUNC9(b);
		if (u_size > MAX_VALUE_SIZE)
		{
			// Size over
			break;
		}
		// Reading an UTF-8 string
		u = FUNC12(u_size + 1);
		if (FUNC8(b, u, u_size) != u_size)
		{
			// Read failure
			FUNC1(u);
			break;
		}
		// Convert to a Unicode string
		unistr_size = FUNC0(u, u_size);
		if (unistr_size == 0)
		{
			FUNC1(u);
			break;
		}
		unistr = FUNC2(unistr_size);
		FUNC11(unistr, unistr_size, u, u_size);
		FUNC1(u);
		v = FUNC7(unistr);
		FUNC1(unistr);
		break;
	}

	return v;
}