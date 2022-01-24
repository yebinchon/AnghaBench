#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_18__ {TYPE_2__* Server; } ;
struct TYPE_17__ {scalar_t__ Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_16__ {int /*<<< orphan*/  FileData; int /*<<< orphan*/  FileName; } ;
struct TYPE_15__ {TYPE_1__* CfgRw; } ;
struct TYPE_14__ {char* FileName; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_CONFIG ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_4__ BUF ;
typedef  TYPE_5__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  SERVER_ADMIN_ONLY ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

UINT FUNC10(ADMIN *a, RPC_CONFIG *t)
{
	SERVER *s;

	SERVER_ADMIN_ONLY;

	FUNC5(t);
	FUNC8(t, sizeof(RPC_CONFIG));

	s = a->Server;

	FUNC0(a, NULL, "LA_GET_CONFIG");

	if (s->CfgRw != NULL)
	{
		FOLDER *f = FUNC6(s);
		BUF *b = FUNC2(f, true);

		FUNC7(t->FileName, sizeof(t->FileName), s->CfgRw->FileName + (s->CfgRw->FileName[0] == '@' ? 1 : 0));

		t->FileData = FUNC9(b->Size + 1);
		FUNC3(t->FileData, b->Buf, b->Size);

		FUNC1(f);
		FUNC4(b);

		return ERR_NO_ERROR;
	}
	else
	{
		return ERR_INTERNAL_ERROR;
	}
}