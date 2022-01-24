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
typedef  int UINT ;
typedef  int /*<<< orphan*/  JSON_ARRAY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int) ; 

UINT FUNC4(JSON_ARRAY *array, void *data, UINT size)
{
	UINT ret;
	char *b64 = FUNC3(size * 4 + 32);
	FUNC0(b64, data, size);

	ret = FUNC2(array, b64);

	FUNC1(b64);
	return ret;
}