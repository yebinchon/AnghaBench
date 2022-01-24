#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_5__ {int DisconnectFlag; int DisconnectedByYou; int /*<<< orphan*/  Magic_Disconnect; int /*<<< orphan*/ * TcpSock; } ;
typedef  int /*<<< orphan*/  RUDP_STACK ;
typedef  TYPE_1__ RUDP_SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(RUDP_STACK *r, RUDP_SESSION *se, bool disconnected_by_you)
{
	// Validate arguments
	if (r == NULL || se == NULL)
	{
		return;
	}

	if (se->DisconnectFlag == false)
	{
		UINT i;

		se->DisconnectFlag = true;
		se->DisconnectedByYou = disconnected_by_you;

		FUNC0("R-UDP Session %X Disconnected. by you flag: %u\n", se, disconnected_by_you);

		if (se->TcpSock != NULL)
		{
			// Disconnect a TCP socket
			FUNC1(se->TcpSock);
			FUNC3(se->TcpSock);

			se->TcpSock = NULL;
		}

		// Send 5 disconnect signals serially if to disconnect from here
		if (disconnected_by_you == false)
		{
			for (i = 0;i < 5;i++)
			{
				FUNC2(r, se, se->Magic_Disconnect, NULL, 0);
			}
		}
	}
}