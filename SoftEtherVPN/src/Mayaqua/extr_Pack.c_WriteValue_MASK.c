#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int IntValue; int Size; int /*<<< orphan*/  UniStr; int /*<<< orphan*/ * Str; int /*<<< orphan*/ * Data; int /*<<< orphan*/  Int64Value; } ;
typedef  TYPE_1__ VALUE ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
#define  VALUE_DATA 132 
#define  VALUE_INT 131 
#define  VALUE_INT64 130 
#define  VALUE_STR 129 
#define  VALUE_UNISTR 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 

void FUNC8(BUF *b, VALUE *v, UINT type)
{
	UINT len;
	BYTE *u;
	UINT u_size;
	// Validate arguments
	if (b == NULL || v == NULL)
	{
		return;
	}

	// Data item
	switch (type)
	{
	case VALUE_INT:			// Integer
		FUNC5(b, v->IntValue);
		break;
	case VALUE_INT64:		// 64 bit integer
		FUNC6(b, v->Int64Value);
		break;
	case VALUE_DATA:		// Data
		// Size
		FUNC5(b, v->Size);
		// Body
		FUNC4(b, v->Data, v->Size);
		break;
	case VALUE_STR:			// ANSI string
		len = FUNC2(v->Str);
		// Length
		FUNC5(b, len);
		// String body
		FUNC4(b, v->Str, len);
		break;
	case VALUE_UNISTR:		// Unicode string
		// Convert to UTF-8
		u_size = FUNC0(v->UniStr) + 1;
		u = FUNC7(u_size);
		FUNC3(u, u_size, v->UniStr);
		// Size
		FUNC5(b, u_size);
		// UTF-8 string body
		FUNC4(b, u, u_size);
		FUNC1(u);
		break;
	}
}