#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  taskname ;
struct TYPE_6__ {int IsConnected; TYPE_1__* Server; } ;
struct TYPE_5__ {int /*<<< orphan*/  TasksFromFarmControllerLock; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_2__ FARM_CONTROLLER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(FARM_CONTROLLER *f, SOCK *sock)
{
	PACK *request;
	PACK *response;
	char taskname[MAX_SIZE];
	// Validate arguments
	if (f == NULL || sock == NULL)
	{
		return;
	}

	f->IsConnected = true;

	while (true)
	{
		bool ret;
		// Receive the PACK
		request = FUNC1(sock);
		if (request == NULL)
		{
			// Disconnect
			break;
		}

		response = NULL;

		// Get the name
		if (FUNC6(request, "taskname", taskname, sizeof(taskname)))
		{
			FUNC3(f->Server->TasksFromFarmControllerLock);
			{
				response = FUNC7(f, request, taskname);
			}
			FUNC8(f->Server->TasksFromFarmControllerLock);
		}

		FUNC0(request);

		// Return a response
		if (response == NULL)
		{
			response = FUNC4();
		}
		else
		{
			FUNC5(response, "succeed", 1);
		}

		ret = FUNC2(sock, response);
		FUNC0(response);

		if (ret == false)
		{
			// Disconnect
			break;
		}
	}

	f->IsConnected = false;
}