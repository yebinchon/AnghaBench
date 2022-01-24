#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_3__ {int DropBroadcastsInPrivacyFilterMode; int DropArpInPrivacyFilterMode; int NoDhcpPacketLogOutsideHub; int RemoveDefGwOnDhcpForLocalhost; scalar_t__ AccessListIncludeFileCacheLifetime; int ManageOnlyPrivateIP; int ManageOnlyLocalUnicastIPv6; int NoMacAddressLog; void* UseHubNameAsRadiusNasId; void* UseHubNameAsDhcpUserClassOption; void* NoPhysicalIPOnPacketLog; void* DetectDormantSessionInterval; void* SecureNAT_RandomizeAssignIp; void* DenyAllRadiusLoginWithNoVlanAssign; void* AssignVLanIdByRadiusAttribute; void* SuppressClientUpdateNotification; void* DisableCorrectIpOffloadChecksum; void* DisableCheckMacOnLocalBridge; void* DisableUserModeSecureNAT; void* DisableIpRawModeSecureNAT; void* DisableKernelModeSecureNAT; void* SecureNAT_MaxIcmpSessionsPerIp; void* SecureNAT_MaxDnsSessionsPerIp; void* SecureNAT_MaxUdpSessionsPerIp; void* SecureNAT_MaxTcpSynSentPerIp; void* SecureNAT_MaxTcpSessionsPerIp; void* ApplyIPv4AccessListOnArpPacket; void* DisableUdpFilterForLocalBridgeNic; void* DisableUdpAcceleration; void* DisableHttpParsing; void* DisableAdjustTcpMss; void* AdjustTcpMssValue; void* NoLookBPDUBridgeId; void* DoNotSaveHeavySecurityLogs; void* FloodingSendQueueBufferQuota; void* MaxLoggedPacketsPerMinute; void* BroadcastLimiterStrictMode; void* FixForDLinkBPDU; int /*<<< orphan*/  VlanTypeId; void* NoManageVlanId; void* RequiredClientId; void* ClientMinimumRequiredBuild; void* BroadcastStormDetectionThreshold; void* NoSpinLockForPacketDelay; void* YieldAfterStorePacket; void* DisableIPParsing; void* NoIPv6DefaultRouterInRAWhenIPv6; void* NoIPv6PacketLog; void* NoIPv4PacketLog; void* FilterBPDU; void* FilterNonIP; void* FilterIPv6; void* FilterIPv4; void* FilterOSPF; void* FilterPPPoE; void* NoEnum; void* NoIpTable; void* NoIPv6AddrPolling; void* NoArpPolling; void* MaxSession; } ;
typedef  TYPE_1__ HUB_OPTION ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 scalar_t__ ACCESS_LIST_INCLUDE_FILE_CACHE_LIFETIME ; 
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* DEFAULT_FLOODING_QUEUE_LENGTH ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  MAC_PROTO_TAGVLAN ; 
 int MAX_SIZE ; 

void FUNC5(FOLDER *f, HUB_OPTION *o)
{
	char tmp[MAX_SIZE];
	// Validate arguments
	if (f == NULL || o == NULL)
	{
		return;
	}

	o->MaxSession = FUNC1(f, "MaxSession");
	o->NoArpPolling = FUNC0(f, "NoArpPolling");
	o->NoIPv6AddrPolling = FUNC0(f, "NoIPv6AddrPolling");
	o->NoIpTable = FUNC0(f, "NoIpTable");
	o->NoEnum = FUNC0(f, "NoEnum");
	o->FilterPPPoE = FUNC0(f, "FilterPPPoE");
	o->FilterOSPF = FUNC0(f, "FilterOSPF");
	o->FilterIPv4 = FUNC0(f, "FilterIPv4");
	o->FilterIPv6 = FUNC0(f, "FilterIPv6");
	o->FilterNonIP = FUNC0(f, "FilterNonIP");
	o->FilterBPDU = FUNC0(f, "FilterBPDU");
	o->NoIPv4PacketLog = FUNC0(f, "NoIPv4PacketLog");
	o->NoIPv6PacketLog = FUNC0(f, "NoIPv6PacketLog");
	o->NoIPv6DefaultRouterInRAWhenIPv6 = FUNC0(f, "NoIPv6DefaultRouterInRAWhenIPv6");
	o->DisableIPParsing = FUNC0(f, "DisableIPParsing");
	o->YieldAfterStorePacket = FUNC0(f, "YieldAfterStorePacket");
	o->NoSpinLockForPacketDelay = FUNC0(f, "NoSpinLockForPacketDelay");
	o->BroadcastStormDetectionThreshold = FUNC1(f, "BroadcastStormDetectionThreshold");
	o->ClientMinimumRequiredBuild = FUNC1(f, "ClientMinimumRequiredBuild");
	o->RequiredClientId = FUNC1(f, "RequiredClientId");
	o->NoManageVlanId = FUNC0(f, "NoManageVlanId");
	o->VlanTypeId = 0;
	if (FUNC2(f, "VlanTypeId", tmp, sizeof(tmp)))
	{
		o->VlanTypeId = FUNC4(tmp);
	}
	if (o->VlanTypeId == 0)
	{
		o->VlanTypeId = MAC_PROTO_TAGVLAN;
	}
	o->FixForDLinkBPDU = FUNC0(f, "FixForDLinkBPDU");
	o->BroadcastLimiterStrictMode = FUNC0(f, "BroadcastLimiterStrictMode");
	o->MaxLoggedPacketsPerMinute = FUNC1(f, "MaxLoggedPacketsPerMinute");
	if (FUNC3(f, "FloodingSendQueueBufferQuota"))
	{
		o->FloodingSendQueueBufferQuota = FUNC1(f, "FloodingSendQueueBufferQuota");
	}
	else
	{
		o->FloodingSendQueueBufferQuota = DEFAULT_FLOODING_QUEUE_LENGTH;
	}
	o->DoNotSaveHeavySecurityLogs = FUNC0(f, "DoNotSaveHeavySecurityLogs");

	if (FUNC3(f, "DropBroadcastsInPrivacyFilterMode"))
	{
		o->DropBroadcastsInPrivacyFilterMode = FUNC0(f, "DropBroadcastsInPrivacyFilterMode");
	}
	else
	{
		o->DropBroadcastsInPrivacyFilterMode = true;
	}

	if (FUNC3(f, "DropArpInPrivacyFilterMode"))
	{
		o->DropArpInPrivacyFilterMode = FUNC0(f, "DropArpInPrivacyFilterMode");
	}
	else
	{
		o->DropArpInPrivacyFilterMode = true;
	}

	o->NoLookBPDUBridgeId = FUNC0(f, "NoLookBPDUBridgeId");
	o->AdjustTcpMssValue = FUNC1(f, "AdjustTcpMssValue");
	o->DisableAdjustTcpMss = FUNC0(f, "DisableAdjustTcpMss");
	if (FUNC3(f, "NoDhcpPacketLogOutsideHub"))
	{
		o->NoDhcpPacketLogOutsideHub = FUNC0(f, "NoDhcpPacketLogOutsideHub");
	}
	else
	{
		o->NoDhcpPacketLogOutsideHub = true;
	}
	o->DisableHttpParsing = FUNC0(f, "DisableHttpParsing");
	o->DisableUdpAcceleration = FUNC0(f, "DisableUdpAcceleration");
	o->DisableUdpFilterForLocalBridgeNic = FUNC0(f, "DisableUdpFilterForLocalBridgeNic");
	o->ApplyIPv4AccessListOnArpPacket = FUNC0(f, "ApplyIPv4AccessListOnArpPacket");
	if (FUNC3(f, "RemoveDefGwOnDhcpForLocalhost"))
	{
		o->RemoveDefGwOnDhcpForLocalhost = FUNC0(f, "RemoveDefGwOnDhcpForLocalhost");
	}
	else
	{
		o->RemoveDefGwOnDhcpForLocalhost = true;
	}
	o->SecureNAT_MaxTcpSessionsPerIp = FUNC1(f, "SecureNAT_MaxTcpSessionsPerIp");
	o->SecureNAT_MaxTcpSynSentPerIp = FUNC1(f, "SecureNAT_MaxTcpSynSentPerIp");
	o->SecureNAT_MaxUdpSessionsPerIp = FUNC1(f, "SecureNAT_MaxUdpSessionsPerIp");
	o->SecureNAT_MaxDnsSessionsPerIp = FUNC1(f, "SecureNAT_MaxDnsSessionsPerIp");
	o->SecureNAT_MaxIcmpSessionsPerIp = FUNC1(f, "SecureNAT_MaxIcmpSessionsPerIp");
	o->AccessListIncludeFileCacheLifetime = FUNC1(f, "AccessListIncludeFileCacheLifetime");

	if (o->AccessListIncludeFileCacheLifetime == 0)
	{
		o->AccessListIncludeFileCacheLifetime = ACCESS_LIST_INCLUDE_FILE_CACHE_LIFETIME;
	}

	o->DisableKernelModeSecureNAT = FUNC0(f, "DisableKernelModeSecureNAT");
	o->DisableIpRawModeSecureNAT = FUNC0(f, "DisableIpRawModeSecureNAT");
	o->DisableUserModeSecureNAT = FUNC0(f, "DisableUserModeSecureNAT");
	o->DisableCheckMacOnLocalBridge = FUNC0(f, "DisableCheckMacOnLocalBridge");
	o->DisableCorrectIpOffloadChecksum = FUNC0(f, "DisableCorrectIpOffloadChecksum");
	o->SuppressClientUpdateNotification = FUNC0(f, "SuppressClientUpdateNotification");
	o->AssignVLanIdByRadiusAttribute = FUNC0(f, "AssignVLanIdByRadiusAttribute");
	o->DenyAllRadiusLoginWithNoVlanAssign = FUNC0(f, "DenyAllRadiusLoginWithNoVlanAssign");
	o->SecureNAT_RandomizeAssignIp = FUNC0(f, "SecureNAT_RandomizeAssignIp");
	o->DetectDormantSessionInterval = FUNC1(f, "DetectDormantSessionInterval");
	o->NoPhysicalIPOnPacketLog = FUNC0(f, "NoPhysicalIPOnPacketLog");
	o->UseHubNameAsDhcpUserClassOption = FUNC0(f, "UseHubNameAsDhcpUserClassOption");
	o->UseHubNameAsRadiusNasId = FUNC0(f, "UseHubNameAsRadiusNasId");

	// Enabled by default
	if (FUNC3(f, "ManageOnlyPrivateIP"))
	{
		o->ManageOnlyPrivateIP = FUNC0(f, "ManageOnlyPrivateIP");
	}
	else
	{
		o->ManageOnlyPrivateIP = true;
	}
	if (FUNC3(f, "ManageOnlyLocalUnicastIPv6"))
	{
		o->ManageOnlyLocalUnicastIPv6 = FUNC0(f, "ManageOnlyLocalUnicastIPv6");
	}
	else
	{
		o->ManageOnlyLocalUnicastIPv6 = true;
	}
	if (FUNC3(f, "NoMacAddressLog"))
	{
		o->NoMacAddressLog = FUNC0(f, "NoMacAddressLog");
	}
	else
	{
		o->NoMacAddressLog = true;
	}
}