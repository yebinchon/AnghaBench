#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  safe_hub_name ;
typedef  int /*<<< orphan*/  packet_logger_name ;
typedef  int /*<<< orphan*/  VH_OPTION ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_17__ {scalar_t__ Bridge; TYPE_2__* Server; int /*<<< orphan*/  ref; } ;
struct TYPE_14__ {int SavePacketLog; int SaveSecurityLog; void* SecurityLogSwitchType; void* PacketLogSwitchType; int /*<<< orphan*/ * PacketLogConfig; } ;
struct TYPE_16__ {int EnableSecureNAT; int FarmMember; int WatchDogStarted; int /*<<< orphan*/  Name; TYPE_4__* Cedar; int /*<<< orphan*/  HubMacAddr; TYPE_11__* Option; TYPE_1__ LogSetting; void* SecurityLogger; void* PacketLogger; int /*<<< orphan*/  UserList; void* TicketList; int /*<<< orphan*/  RadiusServerPort; void* RadiusOptionLock; int /*<<< orphan*/  HubIpV6; int /*<<< orphan*/  HubIp; void* SecureNATOption; int /*<<< orphan*/ * SecureNAT; int /*<<< orphan*/  HubSignature; void* OldTraffic; void* Traffic; void* LinkList; void* MonitorList; void* IpTable; int /*<<< orphan*/  MacHashTable; void* NumSessionsBridge; void* NumSessionsClient; void* NumSessions; void* SessionCounter; void* SessionList; int /*<<< orphan*/  HubDb; void* TrafficLock; scalar_t__ NumLogin; void* LastLoginTime; void* LastCommTime; void* AdminOptionList; int /*<<< orphan*/  Type; int /*<<< orphan*/  ref; void* lock_online; void* lock; int /*<<< orphan*/  SecurePassword; int /*<<< orphan*/  HashedPassword; } ;
struct TYPE_15__ {scalar_t__ ServerType; } ;
struct TYPE_13__ {scalar_t__ VlanTypeId; int DropBroadcastsInPrivacyFilterMode; int DropArpInPrivacyFilterMode; int NoArpPolling; int NoIpTable; } ;
typedef  int /*<<< orphan*/  IP ;
typedef  int /*<<< orphan*/  HUB_OPTION ;
typedef  TYPE_3__ HUB ;
typedef  TYPE_4__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  ADMINISTRATOR_USERNAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * CompareAdminOption ; 
 int /*<<< orphan*/ * CompareIpTable ; 
 int /*<<< orphan*/  CompareMacTable ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_11__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GetHashOfMacTable ; 
 int /*<<< orphan*/  HUB_PACKET_LOG_DIR_NAME ; 
 int /*<<< orphan*/  HUB_PACKET_LOG_FILE_NAME ; 
 int /*<<< orphan*/  HUB_PACKET_LOG_PREFIX ; 
 int /*<<< orphan*/  HUB_SECURITY_LOG_DIR_NAME ; 
 int /*<<< orphan*/  HUB_SECURITY_LOG_FILE_NAME ; 
 int /*<<< orphan*/  HUB_SECURITY_LOG_PREFIX ; 
 int /*<<< orphan*/  HUB_TYPE_STANDALONE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 void* LOG_SWITCH_DAY ; 
 scalar_t__ MAC_PROTO_TAGVLAN ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 void* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 void* FUNC18 (int /*<<< orphan*/ *) ; 
 void* FUNC19 () ; 
 void* FUNC20 (char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 void* FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (void*,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,void*) ; 
 size_t PACKET_LOG_DHCP ; 
 int /*<<< orphan*/  PACKET_LOG_HEADER ; 
 size_t PACKET_LOG_TCP_CONN ; 
 int /*<<< orphan*/  RADIUS_DEFAULT_PORT ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC27 (TYPE_4__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__*) ; 
 void* FUNC31 () ; 
 void* FUNC32 (int) ; 

HUB *FUNC33(CEDAR *cedar, char *HubName, HUB_OPTION *option)
{
	HUB *h;
	char packet_logger_name[MAX_SIZE];
	char tmp[MAX_SIZE];
	char safe_hub_name[MAX_HUBNAME_LEN + 1];
	UCHAR hash[SHA1_SIZE];
	IP ip6;
	// Validate arguments
	if (cedar == NULL || option == NULL || HubName == NULL)
	{
		return NULL;
	}

	h = FUNC32(sizeof(HUB));
	FUNC29(h->HashedPassword, "", 0);
	FUNC10(h->SecurePassword, ADMINISTRATOR_USERNAME, "");
	h->lock = FUNC19();
	h->lock_online = FUNC19();
	h->ref = FUNC21();
	h->Cedar = cedar;
	FUNC1(h->Cedar->ref);
	h->Type = HUB_TYPE_STANDALONE;

	FUNC2(safe_hub_name, sizeof(safe_hub_name), HubName);
	h->Name = FUNC4(safe_hub_name);


	h->AdminOptionList = FUNC18(CompareAdminOption);
	FUNC0(h, true);

	h->LastCommTime = FUNC31();
	h->LastLoginTime = FUNC31();
	h->NumLogin = 0;

	h->TrafficLock = FUNC19();

	h->HubDb = FUNC17();

	h->SessionList = FUNC18(NULL);
	h->SessionCounter = FUNC15();
	h->NumSessions = FUNC15();
	h->NumSessionsClient = FUNC15();
	h->NumSessionsBridge = FUNC15();
	h->MacHashTable = FUNC16(GetHashOfMacTable, CompareMacTable, 8, false);
	h->IpTable = FUNC18(CompareIpTable);
	h->MonitorList = FUNC18(NULL);
	h->LinkList = FUNC18(NULL);

	h->Traffic = FUNC22();
	h->OldTraffic = FUNC22();

	h->Option = FUNC32(sizeof(HUB_OPTION));
	FUNC3(h->Option, option, sizeof(HUB_OPTION));

	if (h->Option->VlanTypeId == 0)
	{
		h->Option->VlanTypeId = MAC_PROTO_TAGVLAN;
	}

	h->Option->DropBroadcastsInPrivacyFilterMode = true;
	h->Option->DropArpInPrivacyFilterMode = true;

	FUNC26(h->HubSignature, sizeof(h->HubSignature));

	// SecureNAT related
	h->EnableSecureNAT = false;
	h->SecureNAT = NULL;
	h->SecureNATOption = FUNC32(sizeof(VH_OPTION));
	FUNC25(NULL, h->SecureNATOption);

	if (h->Cedar != NULL && h->Cedar->Server != NULL && h->Cedar->Server->ServerType == SERVER_TYPE_FARM_CONTROLLER)
	{
		FUNC24(h->SecureNATOption, true);
	}

	// Generate a temporary MAC address for the HUB
	FUNC9(hash);
	FUNC7(h->HubMacAddr, h->Name);
	FUNC6(&h->HubIp, h->Name);

	// IPv6 address for the HUB
	FUNC8(&ip6, h->HubMacAddr);
	FUNC11(&h->HubIpV6, &ip6);

	h->RadiusOptionLock = FUNC19();
	h->RadiusServerPort = RADIUS_DEFAULT_PORT;

	h->TicketList = FUNC18(NULL);

	FUNC12(h);

	// Create a user list
	h->UserList = FUNC23();

	// Default logging settings
	h->LogSetting.SavePacketLog = h->LogSetting.SaveSecurityLog = true;
	h->LogSetting.PacketLogConfig[PACKET_LOG_TCP_CONN] =
		h->LogSetting.PacketLogConfig[PACKET_LOG_DHCP] = PACKET_LOG_HEADER;
	h->LogSetting.SecurityLogSwitchType = LOG_SWITCH_DAY;
	h->LogSetting.PacketLogSwitchType = LOG_SWITCH_DAY;

	FUNC14(HUB_SECURITY_LOG_DIR_NAME);
	FUNC14(HUB_PACKET_LOG_DIR_NAME);

	// Start the packet logger
	FUNC5(packet_logger_name, sizeof(packet_logger_name), HUB_PACKET_LOG_FILE_NAME, h->Name);
	h->PacketLogger = FUNC20(packet_logger_name, HUB_PACKET_LOG_PREFIX, h->LogSetting.PacketLogSwitchType);

	// Start the security logger
	FUNC5(tmp, sizeof(tmp), HUB_SECURITY_LOG_FILE_NAME, h->Name);
	h->SecurityLogger = FUNC20(tmp, HUB_SECURITY_LOG_PREFIX, h->LogSetting.SecurityLogSwitchType);

	if (h->Cedar->Server != NULL && h->Cedar->Server->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		h->FarmMember = true;
	}

	// Start the HUB
	FUNC28(h);

	if (h->Cedar->Bridge)
	{
		h->Option->NoArpPolling = true;
	}

	if (h->Option->NoArpPolling == false && h->Option->NoIpTable == false)
	{
		FUNC30(h);
		h->WatchDogStarted = true;
	}

	FUNC27(h->Cedar, "LS_HUB_START", h->Name);

	FUNC13(tmp, sizeof(tmp), h->HubMacAddr);
	FUNC27(h->Cedar, "LS_HUB_MAC", h->Name, tmp);

	return h;
}