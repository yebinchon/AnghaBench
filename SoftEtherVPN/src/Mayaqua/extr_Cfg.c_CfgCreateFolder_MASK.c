#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_7__ {void* Folders; struct TYPE_7__* Parent; void* Name; void* Items; } ;
typedef  TYPE_1__ FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  CmpFolderName ; 
 int /*<<< orphan*/  CmpItemName ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,TYPE_1__*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (void*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (char*) ; 
 void* FUNC6 (int) ; 

FOLDER *FUNC7(FOLDER *parent, char *name)
{
	UINT size;
	FOLDER *f;
	// Validate arguments
	if (name == NULL)
	{
		return NULL;
	}

	size = FUNC5(name) + 1;

#ifdef	CHECK_CFG_NAME_EXISTS

	// Check the name in the parent list
	if (parent != NULL)
	{
		FOLDER ff;
		ff.Name = ZeroMalloc(size);
		StrCpy(ff.Name, 0, name);
		f = Search(parent->Folders, &ff);
		Free(ff.Name);
		if (f != NULL)
		{
			// Folder with the same name already exists
			return NULL;
		}
	}

#endif	// CHECK_CFG_NAME_EXISTS

	f = FUNC6(sizeof(FOLDER));
	f->Items = FUNC2(CmpItemName);
	f->Folders = FUNC2(CmpFolderName);
	f->Name = FUNC6(size);
	FUNC4(f->Name, 0, name);
	f->Parent = parent;

	// Add to parentlist
	if (f->Parent != NULL)
	{
		FUNC1(f->Parent->Folders, f);
	}
	return f;
}