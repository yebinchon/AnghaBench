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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  Value; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ INI_ENTRY ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

UINT FUNC2(LIST *o, char *key)
{
	INI_ENTRY *e;
	// Validate arguments
	if (o == NULL || key == NULL)
	{
		return 0;
	}

	e = FUNC0(o, key);
	if (e == NULL)
	{
		return 0;
	}

	return FUNC1(e->Value);
}