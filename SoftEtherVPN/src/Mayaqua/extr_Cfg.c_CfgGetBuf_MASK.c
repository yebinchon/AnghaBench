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
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  Buf; } ;
typedef  TYPE_1__ ITEM ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BUF *FUNC4(FOLDER *f, char *name)
{
	ITEM *t;
	BUF *b;
	// Validate arguments
	if (f == NULL || name == NULL)
	{
		return NULL;
	}

	t = FUNC0(f, name);
	if (t == NULL)
	{
		return NULL;
	}

	b = FUNC1();
	FUNC3(b, t->Buf, t->size);
	FUNC2(b, 0, 0);

	return b;
}