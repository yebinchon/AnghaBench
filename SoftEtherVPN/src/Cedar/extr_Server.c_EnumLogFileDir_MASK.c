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
typedef  int /*<<< orphan*/  full_path ;
typedef  int /*<<< orphan*/  file_path ;
typedef  int /*<<< orphan*/  exe_dir ;
typedef  int /*<<< orphan*/  dir_full_path ;
typedef  size_t UINT ;
struct TYPE_10__ {int Folder; scalar_t__ FileSize; char* FileName; int /*<<< orphan*/  UpdateDate; } ;
struct TYPE_9__ {size_t NumFiles; TYPE_3__** File; } ;
struct TYPE_8__ {size_t FileSize; int /*<<< orphan*/  ServerName; int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  Path; } ;
typedef  TYPE_1__ LOG_FILE ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_2__ DIRLIST ;
typedef  TYPE_3__ DIRENT ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 TYPE_2__* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*) ; 
 TYPE_1__* FUNC9 (int) ; 

void FUNC10(LIST *o, char *dirname)
{
	UINT i;
	char exe_dir[MAX_PATH];
	char dir_full_path[MAX_PATH];
	DIRLIST *dir;
	// Validate arguments
	if (o == NULL || dirname == NULL)
	{
		return;
	}

	FUNC4(exe_dir, sizeof(exe_dir));
	FUNC2(dir_full_path, sizeof(dir_full_path), "%s/%s", exe_dir, dirname);

	dir = FUNC1(dir_full_path);
	if (dir == NULL)
	{
		return;
	}

	for (i = 0;i < dir->NumFiles;i++)
	{
		DIRENT *e = dir->File[i];

		if (e->Folder == false && e->FileSize > 0)
		{
			char full_path[MAX_PATH];
			char file_path[MAX_PATH];

			FUNC2(file_path, sizeof(file_path), "%s/%s", dirname, e->FileName);
			FUNC2(full_path, sizeof(full_path), "%s/%s", exe_dir, file_path);

			if (FUNC0(file_path, ".log"))
			{
				LOG_FILE *f = FUNC9(sizeof(LOG_FILE));

				FUNC8(f->Path, sizeof(f->Path), file_path);
				f->FileSize = (UINT)(FUNC7(e->FileSize, 0xffffffffUL));
				f->UpdatedTime = e->UpdateDate;

				FUNC5(f->ServerName, sizeof(f->ServerName));

				FUNC6(o, f);
			}
		}
	}

	FUNC3(dir);
}