#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {scalar_t__ Current; } ;
typedef  int /*<<< orphan*/  IO ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,void*,int /*<<< orphan*/ ) ; 

BUF *FUNC8(wchar_t *filename, bool read_lock)
{
	IO *o;
	BUF *b;
	UINT size;
	void *data;
	// Validate arguments
	if (filename == NULL)
	{
		return NULL;
	}

	o = FUNC1(filename, false, read_lock);
	if (o == NULL)
	{
		return NULL;
	}

	size = FUNC3(o);
	data = FUNC5(size);
	FUNC2(o, data, size);
	FUNC0(o);

	b = FUNC6();
	FUNC7(b, data, size);
	b->Current = 0;
	FUNC4(data);

	return b;
}