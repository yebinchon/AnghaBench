#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_12__ {int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  FileSize; int /*<<< orphan*/  ServerName; int /*<<< orphan*/  Path; } ;
struct TYPE_11__ {size_t NumItem; TYPE_1__* Items; } ;
struct TYPE_10__ {int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  FileSize; int /*<<< orphan*/  ServerName; int /*<<< orphan*/  FilePath; } ;
typedef  TYPE_1__ RPC_ENUM_LOG_FILE_ITEM ;
typedef  TYPE_2__ RPC_ENUM_LOG_FILE ;
typedef  TYPE_3__ LOG_FILE ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  CmpLogFile ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 void* FUNC9 (int) ; 

void FUNC10(RPC_ENUM_LOG_FILE *t, RPC_ENUM_LOG_FILE *src)
{
	LIST *o;
	UINT i;
	// Validate arguments
	if (t == NULL || src == NULL)
	{
		return;
	}

	o = FUNC5(CmpLogFile);

	for (i = 0;i < t->NumItem;i++)
	{
		RPC_ENUM_LOG_FILE_ITEM *e = &t->Items[i];
		LOG_FILE *f = FUNC9(sizeof(LOG_FILE));

		f->FileSize = e->FileSize;
		FUNC7(f->Path, sizeof(f->Path), e->FilePath);
		FUNC7(f->ServerName, sizeof(f->ServerName), e->ServerName);
		f->UpdatedTime = e->UpdatedTime;

		FUNC0(o, f);
	}

	for (i = 0;i < src->NumItem;i++)
	{
		RPC_ENUM_LOG_FILE_ITEM *e = &src->Items[i];
		LOG_FILE *f = FUNC9(sizeof(LOG_FILE));

		f->FileSize = e->FileSize;
		FUNC7(f->Path, sizeof(f->Path), e->FilePath);
		FUNC7(f->ServerName, sizeof(f->ServerName), e->ServerName);
		f->UpdatedTime = e->UpdatedTime;

		FUNC0(o, f);
	}

	FUNC2(t);

	FUNC6(o);

	FUNC8(t, sizeof(RPC_ENUM_LOG_FILE));
	t->NumItem = FUNC4(o);
	t->Items = FUNC9(sizeof(RPC_ENUM_LOG_FILE_ITEM) * t->NumItem);

	for (i = 0;i < t->NumItem;i++)
	{
		LOG_FILE *f = FUNC3(o, i);
		RPC_ENUM_LOG_FILE_ITEM *e = &t->Items[i];

		FUNC7(e->FilePath, sizeof(e->FilePath), f->Path);
		FUNC7(e->ServerName, sizeof(e->ServerName), f->ServerName);
		e->FileSize = f->FileSize;
		e->UpdatedTime = f->UpdatedTime;
	}

	FUNC1(o);
}