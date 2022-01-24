#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tt ;
typedef  int /*<<< orphan*/  servername ;
typedef  int /*<<< orphan*/  logfilename ;
typedef  int /*<<< orphan*/  elf ;
typedef  scalar_t__ UINT ;
struct TYPE_26__ {scalar_t__ Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_25__ {int /*<<< orphan*/ * LogFileList; TYPE_1__* Server; } ;
struct TYPE_24__ {int Me; int /*<<< orphan*/  hostname; } ;
struct TYPE_23__ {char* FilePath; char* ServerName; scalar_t__ Offset; TYPE_7__* Buffer; } ;
struct TYPE_22__ {scalar_t__ ServerType; int /*<<< orphan*/  FarmMemberList; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_READ_LOG_FILE ;
typedef  TYPE_2__ RPC_ENUM_LOG_FILE ;
typedef  TYPE_4__ FARM_MEMBER ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_5__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *,char*,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (char*) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HOST_NAME_LEN ; 
 int MAX_PATH ; 
 TYPE_7__* FUNC9 () ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 scalar_t__ FUNC10 (TYPE_1__*,TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,scalar_t__,TYPE_2__*) ; 
 scalar_t__ FUNC12 (TYPE_5__*,TYPE_2__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int) ; 

UINT FUNC18(ADMIN *a, RPC_READ_LOG_FILE *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	char logfilename[MAX_PATH];
	char servername[MAX_HOST_NAME_LEN + 1];
	UINT offset;
	bool local = true;

	if (FUNC5(t->FilePath))
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC14(logfilename, sizeof(logfilename), t->FilePath);
	FUNC14(servername, sizeof(servername), t->ServerName);
	offset = t->Offset;

	if (s->ServerType != SERVER_TYPE_FARM_CONTROLLER)
	{
		FUNC4(servername, sizeof(servername));
	}

	// Check the permission to read the log file
	if (a->LogFileList == NULL)
	{
		// Enum the log files first
		RPC_ENUM_LOG_FILE elf;
		UINT elf_ret;

		FUNC17(&elf, sizeof(elf));

		elf_ret = FUNC12(a, &elf);

		FUNC2(&elf);

		if (elf_ret != ERR_NO_ERROR)
		{
			return elf_ret;
		}
	}
	if (FUNC1(a->LogFileList, logfilename, servername) == false)
	{
		// There is no such file in the log file list
		return ERR_OBJECT_NOT_FOUND;
	}

	FUNC3(t);
	FUNC17(t, sizeof(RPC_READ_LOG_FILE));

	if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
	{
		UINT i;

		// When the host name in request is a cluster member, redirect the request
		FUNC8(s->FarmMemberList);
		{
			for (i = 0;i < FUNC7(s->FarmMemberList);i++)
			{
				FARM_MEMBER *f = FUNC6(s->FarmMemberList, i);

				if (f->Me == false)
				{
					if (FUNC13(f->hostname, servername) == 0)
					{
						RPC_READ_LOG_FILE tt;

						FUNC17(&tt, sizeof(tt));
						local = false;

						FUNC14(tt.ServerName, sizeof(tt.ServerName), servername);
						FUNC14(tt.FilePath, sizeof(tt.FilePath), logfilename);
						tt.Offset = offset;

						if (FUNC10(s, f, &tt))
						{
							if (tt.Buffer != NULL && tt.Buffer->Size > 0)
							{
								t->Buffer = FUNC9();
								FUNC16(t->Buffer, tt.Buffer->Buf, tt.Buffer->Size);
							}
						}

						FUNC3(&tt);

						break;
					}
				}
			}
		}
		FUNC15(s->FarmMemberList);
	}

	// Read a local file
	if (local)
	{
		FUNC11(s, logfilename, offset, t);
	}

	if (offset == 0)
	{
		FUNC0(a, NULL, "LA_READ_LOG_FILE", servername, logfilename);
	}

	FUNC14(t->FilePath, sizeof(t->FilePath), logfilename);
	FUNC14(t->ServerName, sizeof(t->ServerName), servername);
	t->Offset = offset;

	return ERR_NO_ERROR;
}