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
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int /*<<< orphan*/  FileData; int /*<<< orphan*/  FileName; } ;
typedef  TYPE_1__ RPC_CONFIG ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(RPC_CONFIG *t, PACK *p)
{
	UINT size;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC3(t, sizeof(RPC_CONFIG));
	FUNC2(p, "FileName", t->FileName, sizeof(t->FileName));
	size = FUNC1(p, "FileData");
	t->FileData = FUNC4(size + 1);
	FUNC0(p, "FileData", t->FileData);
}