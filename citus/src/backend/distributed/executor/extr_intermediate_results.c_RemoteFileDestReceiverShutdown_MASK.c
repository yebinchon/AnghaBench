#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  fd; } ;
struct TYPE_6__ {int /*<<< orphan*/  fe_msgbuf; scalar_t__ binary; } ;
struct TYPE_5__ {TYPE_3__ fileCompat; scalar_t__ writeLocalFile; TYPE_2__* copyOutState; int /*<<< orphan*/ * connectionList; } ;
typedef  TYPE_1__ RemoteFileDestReceiver ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  TYPE_2__* CopyOutState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(DestReceiver *destReceiver)
{
	RemoteFileDestReceiver *resultDest = (RemoteFileDestReceiver *) destReceiver;

	List *connectionList = resultDest->connectionList;
	CopyOutState copyOutState = resultDest->copyOutState;

	if (copyOutState->binary)
	{
		/* send footers when using binary encoding */
		FUNC5(copyOutState->fe_msgbuf);
		FUNC0(copyOutState);
		FUNC1(copyOutState->fe_msgbuf, connectionList);

		if (resultDest->writeLocalFile)
		{
			FUNC4(copyOutState->fe_msgbuf, &resultDest->fileCompat);
		}
	}

	/* close the COPY input */
	FUNC2(0, connectionList);

	if (resultDest->writeLocalFile)
	{
		FUNC3(resultDest->fileCompat.fd);
	}
}