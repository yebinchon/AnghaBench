#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ValueList; void* Version; void* Target; void* Method; } ;
typedef  TYPE_1__ HTTP_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/ * CompareHttpValue ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int) ; 

HTTP_HEADER *FUNC3(char *method, char *target, char *version, bool no_sort)
{
	HTTP_HEADER *header;
	// Validate arguments
	if (method == NULL || target == NULL || version == NULL)
	{
		return NULL;
	}

	header = FUNC2(sizeof(HTTP_HEADER));

	header->Method = FUNC0(method);
	header->Target = FUNC0(target);
	header->Version = FUNC0(version);
	header->ValueList = FUNC1(no_sort ? NULL : CompareHttpValue);

	return header;
}