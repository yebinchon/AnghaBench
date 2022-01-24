#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * Parent; int /*<<< orphan*/  Folders; } ;
typedef  TYPE_1__ FOLDER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  TAG_ROOT ; 

FOLDER *FUNC5(BUF *b)
{
	FOLDER *f, *c;
	// Validate arguments
	if (b == NULL)
	{
		return NULL;
	}

	// Create a temporary folder
	c = FUNC0(NULL, "tmp");

	// Read a binary
	FUNC3(b, c);

	// Get root folder
	f = FUNC2(c, TAG_ROOT);
	if (f == NULL)
	{
		// Missing
		FUNC1(c);
		return NULL;
	}

	FUNC4(c->Folders, f);
	f->Parent = NULL;

	FUNC1(c);

	return f;
}