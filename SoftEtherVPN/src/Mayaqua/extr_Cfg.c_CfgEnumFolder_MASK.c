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
typedef  int UINT ;
struct TYPE_6__ {int /*<<< orphan*/  Folders; } ;
typedef  TYPE_1__ FOLDER ;
typedef  int (* ENUM_FOLDER ) (TYPE_1__*,void*) ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(FOLDER *f, ENUM_FOLDER proc, void *param)
{
	UINT i;
	// Validate arguments
	if (f == NULL || proc == NULL)
	{
		return;
	}
	
	for (i = 0;i < FUNC1(f->Folders);i++)
	{
		FOLDER *ff = FUNC0(f->Folders, i);
		if (proc(ff, param) == false)
		{
			break;
		}

		if ((i % 100) == 99)
		{
			FUNC2();
		}
	}
}