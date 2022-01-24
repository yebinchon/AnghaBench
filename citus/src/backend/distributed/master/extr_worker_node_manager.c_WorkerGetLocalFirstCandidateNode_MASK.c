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
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  WorkerNode ;
struct TYPE_4__ {char* data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  WORKER_LENGTH ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 () ; 
 char* FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 

WorkerNode *
FUNC11(List *currentNodeList)
{
	WorkerNode *candidateNode = NULL;
	uint32 currentNodeCount = FUNC7(currentNodeList);

	/* choose first candidate node to be the client's host */
	if (currentNodeCount == 0)
	{
		StringInfo clientHostStringInfo = FUNC8();
		char *clientHost = NULL;
		char *errorMessage = FUNC0(clientHostStringInfo);

		if (errorMessage != NULL)
		{
			FUNC3(ERROR, (FUNC6("%s", errorMessage),
							FUNC4("Could not find the first worker "
									  "node for local-node-first policy."),
							FUNC5("Make sure that you are not on the "
									"master node.")));
		}

		/* if hostname is localhost.localdomain, change it to localhost */
		clientHost = clientHostStringInfo->data;
		if (FUNC10(clientHost, "localhost.localdomain", WORKER_LENGTH) == 0)
		{
			clientHost = FUNC9("localhost");
		}

		candidateNode = FUNC1(clientHost);
		if (candidateNode == NULL)
		{
			FUNC3(ERROR, (FUNC6("could not find worker node for "
								   "host: %s", clientHost)));
		}
	}
	else
	{
		/* find a candidate node different from those already selected */
		candidateNode = FUNC2(currentNodeList);
	}

	return candidateNode;
}