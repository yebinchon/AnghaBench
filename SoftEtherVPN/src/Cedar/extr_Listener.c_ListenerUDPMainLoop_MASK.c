#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_14__ {int IgnoreRecvErr; int /*<<< orphan*/  LocalPort; } ;
struct TYPE_13__ {TYPE_1__* Server; } ;
struct TYPE_12__ {TYPE_4__* Sock; TYPE_3__* Cedar; scalar_t__ Halt; int /*<<< orphan*/  Status; int /*<<< orphan*/  Event; int /*<<< orphan*/  Port; } ;
struct TYPE_11__ {int /*<<< orphan*/  ListenIP; } ;
typedef  int /*<<< orphan*/  SOCKSET ;
typedef  TYPE_2__ LISTENER ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LISTENER_STATUS_LISTENING ; 
 int /*<<< orphan*/  LISTENER_STATUS_TRYING ; 
 int /*<<< orphan*/  LISTEN_RETRY_TIME ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  SELECT_TIME ; 
 scalar_t__ SOCK_LATER ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  UDP_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC12(LISTENER *r)
{
	UCHAR *data;
	// Validate arguments
	if (r == NULL)
	{
		return;
	}

	FUNC1("ListenerUDPMainLoop Starts.\n");
	r->Status = LISTENER_STATUS_TRYING;

	while (true)
	{
		// Try to listen on the UDP port
		while (true)
		{
			// Stop flag inspection
			if (r->Halt)
			{
				// Stop
				return;
			}

			FUNC1("NewUDP()\n");
			r->Sock = FUNC6(r->Port, false, &r->Cedar->Server->ListenIP);
			if (r->Sock != NULL)
			{
				// Wait success
				break;
			}

			// Wait failure
			FUNC1("Failed to NewUDP.\n");
			FUNC11(r->Event, LISTEN_RETRY_TIME);

			// Stop flag inspection
			if (r->Halt)
			{
				FUNC1("UDP Halt.\n");
				return;
			}
		}

		r->Status = LISTENER_STATUS_LISTENING;
		FUNC1("Start Listening at UDP Port %u.\n", r->Sock->LocalPort);

		// Stop flag inspection
		if (r->Halt)
		{
			// Stop
			goto STOP;
		}

		// Allocate the buffer area
		data = FUNC5(UDP_PACKET_SIZE);

		// Read the next packet
		while (true)
		{
			IP src_ip;
			UINT src_port;
			UINT size;
			SOCKSET set;

			FUNC4(&set);
			FUNC0(&set, r->Sock);
			FUNC9(&set, SELECT_TIME, NULL, NULL);

			size = FUNC7(r->Sock, &src_ip, &src_port, data, UDP_PACKET_SIZE);
			if (((size == 0) && (r->Sock->IgnoreRecvErr == false)) || r->Halt)
			{
				// Error has occurred
STOP:
				FUNC2(r->Sock);
				FUNC8(r->Sock);
				r->Sock = NULL;
				FUNC1("UDP Listen Stopped.\n");
				FUNC3(data);
				break;
			}

			// Received an UDP packet
			if (size != SOCK_LATER)
			{
				FUNC10(r->Cedar, r->Sock, &src_ip, src_port, data, size);
			}
		}
	}
}