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
typedef  int /*<<< orphan*/  param_list ;
typedef  int /*<<< orphan*/  opcode ;
typedef  int /*<<< orphan*/  client_id ;
typedef  scalar_t__ UCHAR ;
struct TYPE_6__ {scalar_t__ Opcode; scalar_t__ ServerAddress; scalar_t__ RequestedIp; scalar_t__* Hostname; scalar_t__* UserClass; } ;
struct TYPE_5__ {int /*<<< orphan*/  MacAddress; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ IPC ;
typedef  TYPE_2__ DHCP_OPTION_LIST ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 scalar_t__ ARP_HARDWARE_TYPE_ETHERNET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ DHCP_DISCOVER ; 
 int /*<<< orphan*/  DHCP_ID_CLIENT_ID ; 
 int /*<<< orphan*/  DHCP_ID_HOST_NAME ; 
 int /*<<< orphan*/  DHCP_ID_MESSAGE_TYPE ; 
 int /*<<< orphan*/  DHCP_ID_REQUEST_IP_ADDRESS ; 
 int /*<<< orphan*/  DHCP_ID_REQ_PARAM_LIST ; 
 int /*<<< orphan*/  DHCP_ID_SERVER_ADDRESS ; 
 int /*<<< orphan*/  DHCP_ID_USER_CLASS ; 
 int /*<<< orphan*/  DHCP_ID_VENDOR_ID ; 
 scalar_t__ DHCP_INFORM ; 
 scalar_t__ DHCP_REQUEST ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__* IPC_DHCP_VENDOR_ID ; 
 int FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (scalar_t__*) ; 

BUF *FUNC8(IPC *ipc, DHCP_OPTION_LIST *opt)
{
	LIST *o;
	UCHAR opcode;
	BUF *ret;
	// Validate arguments
	if (ipc == NULL || opt == NULL)
	{
		return NULL;
	}

	o = FUNC6(NULL);

	// Opcode
	opcode = opt->Opcode;
	FUNC0(o, FUNC5(DHCP_ID_MESSAGE_TYPE, &opcode, sizeof(opcode)));

	// Server ID
	if (opt->ServerAddress != 0)
	{
		FUNC0(o, FUNC5(DHCP_ID_SERVER_ADDRESS, &opt->ServerAddress, 4));
	}

	// Requested IP Address
	if (opt->RequestedIp != 0)
	{
		FUNC0(o, FUNC5(DHCP_ID_REQUEST_IP_ADDRESS, &opt->RequestedIp, 4));
	}

	// Hostname
	if (FUNC4(opt->Hostname) == false)
	{
		FUNC0(o, FUNC5(DHCP_ID_HOST_NAME, opt->Hostname, FUNC7(opt->Hostname)));
		FUNC0(o, FUNC5(DHCP_ID_CLIENT_ID, opt->Hostname, FUNC7(opt->Hostname)));
	}
	else // Client MAC Address
	{
		UCHAR client_id[7];
		client_id[0] = ARP_HARDWARE_TYPE_ETHERNET;
		FUNC2(client_id + 1, ipc->MacAddress, 6);
		FUNC0(o, FUNC5(DHCP_ID_CLIENT_ID, client_id, sizeof(client_id)));
	}

	// User Class
	if (FUNC4(opt->UserClass) == false)
	{
		FUNC0(o, FUNC5(DHCP_ID_USER_CLASS, opt->UserClass, FUNC7(opt->UserClass)));
	}

	// Vendor
	FUNC0(o, FUNC5(DHCP_ID_VENDOR_ID, IPC_DHCP_VENDOR_ID, FUNC7(IPC_DHCP_VENDOR_ID)));

	// Parameter Request List
	if (opcode == DHCP_DISCOVER || opcode == DHCP_REQUEST || opcode == DHCP_INFORM)
	{
		UCHAR param_list[12];

		param_list[0] = 1;
		param_list[1] = 15;
		param_list[2] = 3;
		param_list[3] = 6;
		param_list[4] = 44;
		param_list[5] = 46;
		param_list[6] = 47;
		param_list[7] = 31;
		param_list[8] = 33;
		param_list[9] = 121;
		param_list[10] = 249;
		param_list[11] = 43;

		FUNC0(o, FUNC5(DHCP_ID_REQ_PARAM_LIST, param_list, sizeof(param_list)));
	}

	ret = FUNC1(o);

	FUNC3(o);

	return ret;
}