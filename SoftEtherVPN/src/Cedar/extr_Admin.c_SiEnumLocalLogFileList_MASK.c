#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_10__ {int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  FileSize; int /*<<< orphan*/  ServerName; int /*<<< orphan*/  Path; } ;
struct TYPE_9__ {size_t NumItem; TYPE_1__* Items; } ;
struct TYPE_8__ {int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  FileSize; int /*<<< orphan*/  ServerName; int /*<<< orphan*/  FilePath; } ;
typedef  int /*<<< orphan*/  SERVER ;
typedef  TYPE_1__ RPC_ENUM_LOG_FILE_ITEM ;
typedef  TYPE_2__ RPC_ENUM_LOG_FILE ;
typedef  TYPE_3__ LOG_FILE ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC6 (int) ; 

void FUNC7(SERVER *s, char *hubname, RPC_ENUM_LOG_FILE *t)
{
	LIST *o;
	UINT i;
	// Validate arguments
	if (s == NULL || t == NULL)
	{
		return;
	}

	FUNC5(t, sizeof(RPC_ENUM_LOG_FILE));

	o = FUNC0(hubname);

	t->NumItem = FUNC3(o);
	t->Items = FUNC6(sizeof(RPC_ENUM_LOG_FILE_ITEM) * t->NumItem);

	for (i = 0;i < FUNC3(o);i++)
	{
		LOG_FILE *f = FUNC2(o, i);
		RPC_ENUM_LOG_FILE_ITEM *e = &t->Items[i];

		FUNC4(e->FilePath, sizeof(e->FilePath), f->Path);
		FUNC4(e->ServerName, sizeof(e->ServerName), f->ServerName);
		e->FileSize = f->FileSize;
		e->UpdatedTime = f->UpdatedTime;
	}

	FUNC1(o);
}