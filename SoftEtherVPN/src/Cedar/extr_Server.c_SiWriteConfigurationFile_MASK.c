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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int /*<<< orphan*/  SaveCfgLock; int /*<<< orphan*/  ConfigRevision; scalar_t__ BackupConfigOnlyWhenModified; int /*<<< orphan*/ * CfgRw; scalar_t__ NoMoreSave; } ;
typedef  TYPE_1__ SERVER ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

UINT FUNC6(SERVER *s)
{
	UINT ret;
	// Validate arguments
	if (s == NULL)
	{
		return 0;
	}

	if (s->CfgRw == NULL)
	{
		return 0;
	}

	if (s->NoMoreSave)
	{
		return 0;
	}

	FUNC2(s->SaveCfgLock);
	{
		FOLDER *f;

		FUNC1("save: SiWriteConfigurationToCfg() start.\n");
		f = FUNC4(s);
		FUNC1("save: SiWriteConfigurationToCfg() finished.\n");

		FUNC1("save: SaveCfgRw() start.\n");
		ret = FUNC3(s->CfgRw, f, s->BackupConfigOnlyWhenModified ? s->ConfigRevision : INFINITE);
		FUNC1("save: SaveCfgRw() finished.\n");

		FUNC1("save: CfgDeleteFolder() start.\n");
		FUNC0(f);
		FUNC1("save: CfgDeleteFolder() finished.\n");
	}
	FUNC5(s->SaveCfgLock);

	return ret;
}