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
struct TYPE_2__ {int size; int maxSize; int /*<<< orphan*/ ** values; void** keywords; } ;

/* Variables and functions */
 TYPE_1__ ConnParams ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (char const*) ; 

void
FUNC4(const char *keyword, const char *value)
{
	if (ConnParams.size + 1 >= ConnParams.maxSize)
	{
		/* hopefully this error is only seen by developers */
		FUNC0(ERROR, (FUNC1(ERRCODE_INSUFFICIENT_RESOURCES),
						FUNC2("ConnParams arrays bound check failed")));
	}

	ConnParams.keywords[ConnParams.size] = FUNC3(keyword);
	ConnParams.values[ConnParams.size] = FUNC3(value);
	ConnParams.size++;

	ConnParams.keywords[ConnParams.size] = ConnParams.values[ConnParams.size] = NULL;
}