#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ removeType; int /*<<< orphan*/  objects; } ;
typedef  TYPE_1__ DropStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ OBJECT_INDEX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(DropStmt *dropIndexStatement)
{
	FUNC0(dropIndexStatement->removeType == OBJECT_INDEX);

	if (FUNC5(dropIndexStatement->objects) > 1)
	{
		FUNC1(ERROR, (FUNC2(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC4("cannot drop multiple distributed objects in a "
							   "single command"),
						FUNC3("Try dropping each object in a separate DROP "
								"command.")));
	}
}