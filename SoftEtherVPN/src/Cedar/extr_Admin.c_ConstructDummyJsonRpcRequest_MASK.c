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
typedef  int /*<<< orphan*/  rand ;
typedef  int /*<<< orphan*/  id_str ;
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int /*<<< orphan*/  JSON_VALUE ;
typedef  int /*<<< orphan*/  JSON_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

JSON_VALUE *FUNC6(char *method_name, JSON_VALUE *p)
{
	JSON_VALUE *ret;
	JSON_OBJECT *ret_object;
	UCHAR rand[16];
	char id_str[64];

	FUNC5(rand, sizeof(rand));

	FUNC0(id_str, sizeof(id_str), rand, sizeof(rand));

	ret = FUNC1();
	ret_object = FUNC2(ret);

	FUNC4(ret_object, "jsonrpc", "2.0");
	FUNC4(ret_object, "method", method_name);
	FUNC3(ret_object, "params", p);
	FUNC4(ret_object, "id", id_str);

	return ret;
}