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
struct TYPE_4__ {struct TYPE_4__* delim; struct TYPE_4__* null_print_client; int /*<<< orphan*/  fe_msgbuf; int /*<<< orphan*/  rowcontext; } ;
typedef  TYPE_1__* CopyOutState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(CopyOutState rowOutputState)
{
	FUNC0(rowOutputState != NULL);

	FUNC2(rowOutputState->rowcontext);

	FUNC1(rowOutputState->fe_msgbuf);

	FUNC3(rowOutputState->null_print_client);
	FUNC3(rowOutputState->delim);

	FUNC3(rowOutputState);
}