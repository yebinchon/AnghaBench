#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_2__* Session; } ;
typedef  TYPE_1__ VH ;
struct TYPE_19__ {scalar_t__ AuthType; int RetryInterval; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  UseCompress; int /*<<< orphan*/  UseEncrypt; int /*<<< orphan*/  MaxConnection; int /*<<< orphan*/ * SecureSignProc; } ;
struct TYPE_18__ {scalar_t__ Id; scalar_t__ Param; } ;
struct TYPE_17__ {int ServerMode; int RetryInterval; int ClientModeAndUseVLan; int IsVPNClientAndVLAN_Win32; int VirtualHost; int LinkModeClient; int SecureNATMode; int BridgeMode; int* NicDownOnDisconnect; TYPE_12__* ClientOption; TYPE_12__* ClientAuth; int /*<<< orphan*/ * Account; int /*<<< orphan*/  ref; TYPE_3__* PacketAdapter; int /*<<< orphan*/ * Link; int /*<<< orphan*/  UseCompress; int /*<<< orphan*/  UseEncrypt; int /*<<< orphan*/  MaxConnection; int /*<<< orphan*/  CancelList; int /*<<< orphan*/  Cancel1; void* OldTraffic; void* TrafficLock; int /*<<< orphan*/  HaltEvent; void* Traffic; int /*<<< orphan*/  LastCommTime; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  Name; int /*<<< orphan*/ * Cedar; void* lock; int /*<<< orphan*/  LoggingRecordCount; } ;
struct TYPE_15__ {int DisableQoS; int MaxConnection; int HalfConnection; scalar_t__ AuthType; scalar_t__ NumRetry; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/ * ClientK; int /*<<< orphan*/ * ClientX; scalar_t__ NoRoutingTracking; int /*<<< orphan*/  AdditionalConnectionInterval; } ;
struct TYPE_14__ {int /*<<< orphan*/  OsType; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_2__ SESSION ;
typedef  TYPE_3__ PACKET_ADAPTER ;
typedef  int /*<<< orphan*/  LINK ;
typedef  TYPE_4__ CLIENT_OPTION ;
typedef  TYPE_4__ CLIENT_AUTH ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  int /*<<< orphan*/  ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BRIDGE_DEVICE_NAME ; 
 scalar_t__ CLIENT_AUTHTYPE_SECURE ; 
 int /*<<< orphan*/  ClientThread ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_12__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  GSF_DISABLE_SESSION_RECONNECT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC6 () ; 
 int /*<<< orphan*/  LINK_DEVICE_NAME ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int MAX_RETRY_INTERVAL ; 
 int /*<<< orphan*/  MIN_RETRY_INTERVAL ; 
 void* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 void* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC17 () ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ PACKET_ADAPTER_ID_VLAN_WIN32 ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SNAT_DEVICE_NAME ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC24 (int) ; 

SESSION *FUNC25(CEDAR *cedar, CLIENT_OPTION *option, CLIENT_AUTH *auth, PACKET_ADAPTER *pa, ACCOUNT *account, bool *NicDownOnDisconnect)
{
	SESSION *s;
	THREAD *t;
	// Validate arguments
	if (cedar == NULL || option == NULL || auth == NULL || pa == NULL ||
		(auth->AuthType == CLIENT_AUTHTYPE_SECURE && auth->SecureSignProc == NULL))
	{
		return NULL;
	}

	// Initialize the SESSION object
	s = FUNC24(sizeof(SESSION));

	s->LoggingRecordCount = FUNC12();

	s->lock = FUNC14();
	s->ref = FUNC15();
	s->Cedar = cedar;
	s->ServerMode = false;
	s->Name = FUNC4("CLIENT_SESSION");
	s->CreatedTime = s->LastCommTime = FUNC22();
	s->Traffic = FUNC17();
	s->HaltEvent = FUNC13();
	s->PacketAdapter = pa;
	s->TrafficLock = FUNC14();
	s->OldTraffic = FUNC17();
	s->Cancel1 = FUNC10();
	s->CancelList = FUNC11();

	// Copy the client connection options
	s->ClientOption = FUNC9(sizeof(CLIENT_OPTION));
	FUNC3(s->ClientOption, option, sizeof(CLIENT_OPTION));

	if (FUNC5(GSF_DISABLE_SESSION_RECONNECT))
	{
		s->ClientOption->DisableQoS = true;
		s->ClientOption->MaxConnection = 1;
		s->ClientOption->HalfConnection = false;
	}

	s->MaxConnection = option->MaxConnection;
	s->UseEncrypt = option->UseEncrypt;
	s->UseCompress = option->UseCompress;

	// Set the retry interval
	s->RetryInterval = FUNC7(option->RetryInterval, 0, 4000000) * 1000;
	s->RetryInterval = FUNC7(s->RetryInterval, MIN_RETRY_INTERVAL, MAX_RETRY_INTERVAL);

	// Interval for additional connection creation is at least 1 second
	s->ClientOption->AdditionalConnectionInterval = FUNC8(s->ClientOption->AdditionalConnectionInterval, 1);

	// Hold whether the virtual LAN card is used in client mode
	s->ClientModeAndUseVLan = (FUNC21(s->ClientOption->DeviceName) == 0) ? false : true;

	if (s->ClientOption->NoRoutingTracking)
	{
		s->ClientModeAndUseVLan = false;
	}

	if (pa->Id == PACKET_ADAPTER_ID_VLAN_WIN32)
	{
		s->IsVPNClientAndVLAN_Win32 = true;
	}

	if (FUNC21(option->DeviceName) == 0)
	{
		// NAT mode
		s->ClientModeAndUseVLan = false;
		s->VirtualHost = true;
	}

	if (FUNC18(FUNC6()->OsType))
	{
		// Prohibit the half-duplex mode in the case of Win9x
		s->ClientOption->HalfConnection = false;
	}

	// Copy the client authentication data
	s->ClientAuth = FUNC9(sizeof(CLIENT_AUTH));
	FUNC3(s->ClientAuth, auth, sizeof(CLIENT_AUTH));

	// Clone the certificate and the private key
	if (s->ClientAuth->ClientX != NULL)
	{
		s->ClientAuth->ClientX = FUNC2(s->ClientAuth->ClientX);
	}
	if (s->ClientAuth->ClientK != NULL)
	{
		s->ClientAuth->ClientK = FUNC1(s->ClientAuth->ClientK);
	}

	if (FUNC20(s->ClientOption->DeviceName, LINK_DEVICE_NAME) == 0)
	{
		// Link client mode
		s->LinkModeClient = true;
		s->Link = (LINK *)s->PacketAdapter->Param;
	}

	if (FUNC20(s->ClientOption->DeviceName, SNAT_DEVICE_NAME) == 0)
	{
		// SecureNAT mode
		s->SecureNATMode = true;
	}

	if (FUNC20(s->ClientOption->DeviceName, BRIDGE_DEVICE_NAME) == 0)
	{
		// Bridge mode
		s->BridgeMode = true;
	}

	if (s->VirtualHost)
	{
		VH *v = (VH *)s->PacketAdapter->Param;

		// Add the session object to VH
		v->Session = s;
		FUNC0(s->ref);
	}

	s->Account = account;

	if (s->ClientAuth->AuthType == CLIENT_AUTHTYPE_SECURE)
	{
		// Do not retry in the case of a smart card authentication
		s->ClientOption->NumRetry = 0;
	}

	s->NicDownOnDisconnect = NicDownOnDisconnect;

	// Create a client thread
	t = FUNC16(ClientThread, (void *)s);
	FUNC23(t);
	FUNC19(t);

	return s;
}