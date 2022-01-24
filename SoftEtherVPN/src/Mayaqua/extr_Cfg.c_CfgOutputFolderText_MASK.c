#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_10__ {TYPE_1__* f; int /*<<< orphan*/ * b; scalar_t__ depth; } ;
struct TYPE_9__ {int /*<<< orphan*/  Items; int /*<<< orphan*/  Folders; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ FOLDER ;
typedef  TYPE_2__ CFG_ENUM_PARAM ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  CfgEnumFolderProc ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  CfgEnumItemProc ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 

void FUNC7(BUF *b, FOLDER *f, UINT depth)
{
	CFG_ENUM_PARAM p;
	// Validate arguments
	if (b == NULL || f == NULL)
	{
		return;
	}

	// Output starting of the folder
	FUNC0(b, f->Name, depth);
	depth++;

	FUNC6(&p, sizeof(CFG_ENUM_PARAM));
	p.depth = depth;
	p.b = b;
	p.f = f;

	// Enumerate the list of items
	FUNC3(f, CfgEnumItemProc, &p);

	if (FUNC4(f->Folders) != 0 && FUNC4(f->Items) != 0)
	{
		FUNC5(b, "\r\n", 2);
	}

	// Enumerate the folder list
	FUNC2(f, CfgEnumFolderProc, &p);
	// Output the end of the folder
	depth--;
	FUNC1(b, depth);

	//WriteBuf(b, "\r\n", 2);
}