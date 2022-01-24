#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t size; int /*<<< orphan*/ ** values; scalar_t__* keywords; } ;
typedef  size_t Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CITUS_APPLICATION_NAME ; 
 TYPE_1__ ConnParams ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

void
FUNC3()
{
	Index paramIdx = 0;
	for (paramIdx = 0; paramIdx < ConnParams.size; paramIdx++)
	{
		FUNC2((void *) ConnParams.keywords[paramIdx]);
		FUNC2((void *) ConnParams.values[paramIdx]);

		ConnParams.keywords[paramIdx] = ConnParams.values[paramIdx] = NULL;
	}

	ConnParams.size = 0;

	FUNC1();

	FUNC0("fallback_application_name", CITUS_APPLICATION_NAME);
}