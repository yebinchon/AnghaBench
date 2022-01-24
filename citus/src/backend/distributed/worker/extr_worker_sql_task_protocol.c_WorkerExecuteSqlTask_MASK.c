#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  long int64 ;
struct TYPE_3__ {int /*<<< orphan*/  (* rDestroy ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {long tuplesSent; TYPE_1__ pub; } ;
typedef  TYPE_2__ TaskFileDestReceiver ;
typedef  int /*<<< orphan*/  Query ;
typedef  int /*<<< orphan*/ * ParamListInfo ;
typedef  int /*<<< orphan*/  EState ;
typedef  int /*<<< orphan*/  DestReceiver ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int64
FUNC5(Query *query, char *taskFilename, bool binaryCopyFormat)
{
	EState *estate = NULL;
	TaskFileDestReceiver *taskFileDest = NULL;
	ParamListInfo paramListInfo = NULL;
	int64 tuplesSent = 0L;

	estate = FUNC0();
	taskFileDest =
		(TaskFileDestReceiver *) FUNC1(taskFilename, estate,
															binaryCopyFormat);

	FUNC2(query, paramListInfo, (DestReceiver *) taskFileDest);

	tuplesSent = taskFileDest->tuplesSent;

	taskFileDest->pub.rDestroy((DestReceiver *) taskFileDest);
	FUNC3(estate);

	return tuplesSent;
}