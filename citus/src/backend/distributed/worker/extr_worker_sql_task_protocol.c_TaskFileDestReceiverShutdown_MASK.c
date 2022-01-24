#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  fd; } ;
struct TYPE_7__ {TYPE_1__ fileCompat; TYPE_3__* copyOutState; } ;
typedef  TYPE_2__ TaskFileDestReceiver ;
struct TYPE_8__ {int /*<<< orphan*/  fe_msgbuf; scalar_t__ binary; } ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  TYPE_3__* CopyOutState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(DestReceiver *destReceiver)
{
	TaskFileDestReceiver *taskFileDest = (TaskFileDestReceiver *) destReceiver;
	CopyOutState copyOutState = taskFileDest->copyOutState;

	if (copyOutState->binary)
	{
		/* write footers when using binary encoding */
		FUNC3(copyOutState->fe_msgbuf);
		FUNC0(copyOutState);
		FUNC2(copyOutState->fe_msgbuf, taskFileDest);
	}

	FUNC1(taskFileDest->fileCompat.fd);
}