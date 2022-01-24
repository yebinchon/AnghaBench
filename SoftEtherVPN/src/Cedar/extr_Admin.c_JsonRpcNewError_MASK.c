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
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int /*<<< orphan*/  JSON_VALUE ;
typedef  int /*<<< orphan*/  JSON_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*,int,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

JSON_VALUE *FUNC7(int code, wchar_t *message)
{
	wchar_t msg[MAX_PATH];
	JSON_VALUE *jv;
	JSON_OBJECT *jo;
	JSON_VALUE *jv2;
	JSON_OBJECT *jo2;

	if (FUNC6(message))
	{
		FUNC5(msg, sizeof(msg), L"Error code %u", code);
	}
	else
	{
		FUNC5(msg, sizeof(msg), L"Error code %u: %s", code, message);
	}

	jv = FUNC0();
	jo = FUNC4(jv);

	jv2 = FUNC0();
	jo2 = FUNC4(jv2);

	FUNC1(jo, "error", jv2);

	FUNC2(jo2, "code", (UINT64)code);
	FUNC3(jo2, "message", msg);

	return jv;
}