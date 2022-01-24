#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_26__ {int ServerAdmin; char* HubName; int /*<<< orphan*/ * LogFileList; TYPE_1__* Server; } ;
struct TYPE_25__ {int Me; int /*<<< orphan*/  hostname; } ;
struct TYPE_24__ {int /*<<< orphan*/  ServerName; int /*<<< orphan*/  Path; int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  FileSize; } ;
struct TYPE_23__ {scalar_t__ NumItem; TYPE_2__* Items; } ;
struct TYPE_22__ {int /*<<< orphan*/  ServerName; int /*<<< orphan*/  FilePath; int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  FileSize; } ;
struct TYPE_21__ {scalar_t__ ServerType; int /*<<< orphan*/ * FarmMemberList; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_ENUM_LOG_FILE_ITEM ;
typedef  TYPE_3__ RPC_ENUM_LOG_FILE ;
typedef  TYPE_4__ LOG_FILE ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  HUB ;
typedef  TYPE_5__ FARM_MEMBER ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_6__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/ * CmpLogFile ; 
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ; 
 scalar_t__ ERR_NOT_SUPPORTED ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 scalar_t__ FUNC14 (TYPE_1__*,TYPE_5__*,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int) ; 
 void* FUNC19 (int) ; 

UINT FUNC20(ADMIN *a, RPC_ENUM_LOG_FILE *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	UINT i;
	bool no_access = false;

	HUB *h;

	if (a->ServerAdmin == false)
	{
		h = FUNC5(c, a->HubName);

		if (a->ServerAdmin == false && FUNC6(h, "no_read_log_file") != 0)
		{
			no_access = true;
		}

		FUNC12(h);
	}
	else
	{
		if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
		{
			// Since Management session will become unstable if log files are
			// enumerated on a cluster controller, it forbids. 
			return ERR_NOT_SUPPORTED;
		}
	}

	if (no_access)
	{
		return ERR_NOT_ENOUGH_RIGHT;
	}

	FUNC4(t);
	FUNC18(t, sizeof(RPC_ENUM_LOG_FILE));

	// Enumerate local log files
	FUNC15(s, a->ServerAdmin ? NULL : a->HubName, t);

	if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
	{
		UINT i;
		LIST *tt_list = FUNC11(NULL);

		FUNC10(s->FarmMemberList);
		{
			for (i = 0;i < FUNC9(s->FarmMemberList);i++)
			{
				FARM_MEMBER *f = FUNC8(s->FarmMemberList, i);

				if (f->Me == false)
				{
					// Enumerate log files on other cluster members.
					RPC_ENUM_LOG_FILE *tt;
					tt = FUNC19(sizeof(RPC_ENUM_LOG_FILE));

					if (FUNC14(s, f, tt, a->ServerAdmin ? "" : a->HubName))
					{
						UINT i;
						for (i = 0;i < tt->NumItem;i++)
						{
							RPC_ENUM_LOG_FILE_ITEM *e = &tt->Items[i];

							FUNC16(e->ServerName, sizeof(e->ServerName), f->hostname);
						}

						FUNC0(tt_list, tt);
					}
					else
					{
						FUNC2(tt);
					}
				}
			}
		}
		FUNC17(s->FarmMemberList);

		for (i = 0;i < FUNC9(tt_list);i++)
		{
			RPC_ENUM_LOG_FILE *tt = FUNC8(tt_list, i);

			FUNC1(t, tt);
			FUNC4(tt);

			FUNC2(tt);
		}

		FUNC13(tt_list);
	}

	// Cache the last list of log files on RPC session
	if (a->LogFileList != NULL)
	{
		FUNC3(a->LogFileList);
	}

	a->LogFileList = FUNC11(CmpLogFile);

	for (i = 0;i < t->NumItem;i++)
	{
		RPC_ENUM_LOG_FILE_ITEM *e = &t->Items[i];
		LOG_FILE *f = FUNC19(sizeof(LOG_FILE));

		f->FileSize = e->FileSize;
		f->UpdatedTime = e->UpdatedTime;
		FUNC16(f->Path, sizeof(f->Path), e->FilePath);
		FUNC16(f->ServerName, sizeof(f->ServerName), e->ServerName);

		FUNC7(a->LogFileList, f);
	}

	return ERR_NO_ERROR;
}