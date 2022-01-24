#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  size_t UINT ;
struct TYPE_9__ {int Folder; int /*<<< orphan*/  FileNameW; } ;
struct TYPE_8__ {size_t NumFiles; TYPE_3__** File; } ;
struct TYPE_7__ {int /*<<< orphan*/  FileList; } ;
typedef  TYPE_1__ ENUM_DIR_WITH_SUB_DATA ;
typedef  TYPE_2__ DIRLIST ;
typedef  TYPE_3__ DIRENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int MAX_SIZE ; 

void FUNC5(ENUM_DIR_WITH_SUB_DATA *d, wchar_t *dirname)
{
	DIRLIST *dir;
	UINT i;
	// Validate arguments
	if (d == NULL || dirname == NULL)
	{
		return;
	}

	dir = FUNC3(dirname, NULL);
	if (dir == NULL)
	{
		return;
	}

	// Files
	for (i = 0;i < dir->NumFiles;i++)
	{
		DIRENT *e = dir->File[i];

		if (e->Folder == false)
		{
			wchar_t tmp[MAX_SIZE];

			FUNC1(tmp, sizeof(tmp), dirname, e->FileNameW);

			FUNC0(d->FileList, FUNC2(tmp));
		}
	}

	// Sub directories
	for (i = 0;i < dir->NumFiles;i++)
	{
		DIRENT *e = dir->File[i];

		if (e->Folder)
		{
			wchar_t tmp[MAX_SIZE];

			FUNC1(tmp, sizeof(tmp), dirname, e->FileNameW);

			FUNC5(d, tmp);
		}
	}

	FUNC4(dir);
}