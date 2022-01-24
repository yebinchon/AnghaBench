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
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_4__ {int DontBackup; void* lock; void* Io; void* FileName; void* FileNameW; } ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_1__ CFG_RW ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int) ; 
 void* FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int) ; 

CFG_RW *FUNC8(FOLDER **root, wchar_t *cfg_name, bool dont_backup, wchar_t *template_name)
{
	CFG_RW *rw;
	FOLDER *f;
	bool loaded_from_template = false;
	// Validate arguments
	if (cfg_name == NULL || root == NULL)
	{
		return NULL;
	}

	f = FUNC0(cfg_name);
	if (f == NULL)
	{
		// Load from template
		if (FUNC6(template_name) == false)
		{
			f = FUNC0(template_name);
			if (f != NULL)
			{
				loaded_from_template = true;

				goto LABEL_CONTINUE;
			}
		}

		rw = FUNC7(sizeof(CFG_RW));
		rw->lock = FUNC5();
		rw->FileNameW = FUNC1(cfg_name);
		rw->FileName = FUNC2(cfg_name);
		rw->Io = FUNC3(cfg_name);
		*root = NULL;
		rw->DontBackup = dont_backup;

		return rw;
	}

LABEL_CONTINUE:
	rw = FUNC7(sizeof(CFG_RW));
	rw->FileNameW = FUNC1(cfg_name);
	rw->FileName = FUNC2(cfg_name);
	if (loaded_from_template == false)
	{
		rw->Io = FUNC4(cfg_name, false);
	}
	else
	{
		rw->Io = FUNC3(cfg_name);
	}
	rw->lock = FUNC5();

	*root = f;

	rw->DontBackup = dont_backup;

	return rw;
}