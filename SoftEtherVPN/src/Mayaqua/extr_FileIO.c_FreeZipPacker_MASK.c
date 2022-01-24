#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  FileList; int /*<<< orphan*/  Fifo; } ;
typedef  TYPE_1__ ZIP_PACKER ;
typedef  TYPE_1__ ZIP_FILE ;
typedef  scalar_t__ UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(ZIP_PACKER *p)
{
	UINT i;
	// Validate arguments
	if (p == NULL)
	{
		return;
	}

	FUNC3(p->Fifo);

	for (i = 0;i < FUNC2(p->FileList);i++)
	{
		ZIP_FILE *f = FUNC1(p->FileList, i);

		FUNC0(f);
	}

	FUNC4(p->FileList);

	FUNC0(p);
}