#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ SavePacketLog; scalar_t__ PacketLogSwitchType; scalar_t__ SaveSecurityLog; scalar_t__ SecurityLogSwitchType; int /*<<< orphan*/ * PacketLogConfig; } ;
struct TYPE_10__ {scalar_t__ Type; int EnableSecureNAT; int /*<<< orphan*/  SecureNATOption; int /*<<< orphan*/  AccessList; TYPE_3__* Option; int /*<<< orphan*/  SecurePassword; int /*<<< orphan*/  HashedPassword; TYPE_1__ LogSetting; int /*<<< orphan*/  Name; TYPE_2__* Cedar; } ;
struct TYPE_9__ {scalar_t__ MaxSession; int NoArpPolling; int NoIPv6AddrPolling; int NoIpTable; int NoEnum; int FilterPPPoE; int YieldAfterStorePacket; int NoSpinLockForPacketDelay; scalar_t__ BroadcastStormDetectionThreshold; scalar_t__ MaxLoggedPacketsPerMinute; scalar_t__ FloodingSendQueueBufferQuota; int DoNotSaveHeavySecurityLogs; int DropBroadcastsInPrivacyFilterMode; int DropArpInPrivacyFilterMode; int SuppressClientUpdateNotification; int AssignVLanIdByRadiusAttribute; int DenyAllRadiusLoginWithNoVlanAssign; scalar_t__ ClientMinimumRequiredBuild; int SecureNAT_RandomizeAssignIp; int NoPhysicalIPOnPacketLog; scalar_t__ DetectDormantSessionInterval; int FixForDLinkBPDU; int BroadcastLimiterStrictMode; int NoLookBPDUBridgeId; int NoManageVlanId; scalar_t__ VlanTypeId; int FilterOSPF; int FilterIPv4; int FilterIPv6; int FilterNonIP; int NoIPv4PacketLog; int NoIPv6PacketLog; int FilterBPDU; int NoIPv6DefaultRouterInRAWhenIPv6; int NoMacAddressLog; int ManageOnlyPrivateIP; int ManageOnlyLocalUnicastIPv6; int DisableIPParsing; scalar_t__ AdjustTcpMssValue; int DisableAdjustTcpMss; int NoDhcpPacketLogOutsideHub; int DisableHttpParsing; int DisableUdpAcceleration; int DisableUdpFilterForLocalBridgeNic; int ApplyIPv4AccessListOnArpPacket; int RemoveDefGwOnDhcpForLocalhost; scalar_t__ SecureNAT_MaxTcpSessionsPerIp; scalar_t__ SecureNAT_MaxTcpSynSentPerIp; scalar_t__ SecureNAT_MaxUdpSessionsPerIp; scalar_t__ SecureNAT_MaxDnsSessionsPerIp; scalar_t__ SecureNAT_MaxIcmpSessionsPerIp; scalar_t__ AccessListIncludeFileCacheLifetime; int DisableKernelModeSecureNAT; int DisableIpRawModeSecureNAT; int DisableUserModeSecureNAT; int DisableCheckMacOnLocalBridge; int DisableCorrectIpOffloadChecksum; int UseHubNameAsDhcpUserClassOption; int UseHubNameAsRadiusNasId; } ;
struct TYPE_8__ {int /*<<< orphan*/ * Server; } ;
typedef  int /*<<< orphan*/  SERVER ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_4__ HUB ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,char*) ; 
 scalar_t__ INFINITE ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ NUM_PACKET_LOG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC9(PACK *p, HUB *h)
{
	UINT i;
	UINT max_session;
	SERVER *s;


	// Validate arguments
	if (p == NULL || h == NULL)
	{
		return;
	}


	s = h->Cedar->Server;
	if (s != NULL)
	{
	}

	FUNC7(p, "HubName", h->Name);
	FUNC5(p, "HubType", h->Type);

	max_session = h->Option->MaxSession;

	if (FUNC0(h, "max_sessions") != 0)
	{
		if (max_session == 0)
		{
			max_session = FUNC0(h, "max_sessions");
		}
		else
		{
			UINT r = FUNC0(h, "max_sessions");
			max_session = FUNC1(max_session, r);
		}
	}

	FUNC5(p, "MaxSession", max_session);

	if (FUNC0(h, "max_sessions_client_bridge_apply") != 0
		)
	{
		FUNC5(p, "MaxSessionClient", FUNC0(h, "max_sessions_client"));
		FUNC5(p, "MaxSessionBridge", FUNC0(h, "max_sessions_bridge"));
		FUNC3(p, "MaxSessionClientBridgeApply", true);
	}
	else
	{
		FUNC5(p, "MaxSessionClient", INFINITE);
		FUNC5(p, "MaxSessionBridge", INFINITE);
	}

	FUNC3(p, "NoArpPolling", h->Option->NoArpPolling);
	FUNC3(p, "NoIPv6AddrPolling", h->Option->NoIPv6AddrPolling);
	FUNC3(p, "NoIpTable", h->Option->NoIpTable);
	FUNC3(p, "NoEnum", h->Option->NoEnum);
	FUNC3(p, "FilterPPPoE", h->Option->FilterPPPoE);
	FUNC3(p, "YieldAfterStorePacket", h->Option->YieldAfterStorePacket);
	FUNC3(p, "NoSpinLockForPacketDelay", h->Option->NoSpinLockForPacketDelay);
	FUNC5(p, "BroadcastStormDetectionThreshold", h->Option->BroadcastStormDetectionThreshold);
	FUNC5(p, "MaxLoggedPacketsPerMinute", h->Option->MaxLoggedPacketsPerMinute);
	FUNC5(p, "FloodingSendQueueBufferQuota", h->Option->FloodingSendQueueBufferQuota);
	FUNC3(p, "DoNotSaveHeavySecurityLogs", h->Option->DoNotSaveHeavySecurityLogs);
	FUNC3(p, "DropBroadcastsInPrivacyFilterMode", h->Option->DropBroadcastsInPrivacyFilterMode);
	FUNC3(p, "DropArpInPrivacyFilterMode", h->Option->DropArpInPrivacyFilterMode);
	FUNC3(p, "SuppressClientUpdateNotification", h->Option->SuppressClientUpdateNotification);
	FUNC3(p, "AssignVLanIdByRadiusAttribute", h->Option->AssignVLanIdByRadiusAttribute);
	FUNC3(p, "DenyAllRadiusLoginWithNoVlanAssign", h->Option->DenyAllRadiusLoginWithNoVlanAssign);
	FUNC5(p, "ClientMinimumRequiredBuild", h->Option->ClientMinimumRequiredBuild);
	FUNC3(p, "SecureNAT_RandomizeAssignIp", h->Option->SecureNAT_RandomizeAssignIp);
	FUNC3(p, "NoPhysicalIPOnPacketLog", h->Option->NoPhysicalIPOnPacketLog);
	FUNC5(p, "DetectDormantSessionInterval", h->Option->DetectDormantSessionInterval);
	FUNC3(p, "FixForDLinkBPDU", h->Option->FixForDLinkBPDU);
	FUNC3(p, "BroadcastLimiterStrictMode", h->Option->BroadcastLimiterStrictMode);
	FUNC3(p, "NoLookBPDUBridgeId", h->Option->NoLookBPDUBridgeId);
	FUNC3(p, "NoManageVlanId", h->Option->NoManageVlanId);
	FUNC5(p, "VlanTypeId", h->Option->VlanTypeId);
	FUNC3(p, "FilterOSPF", h->Option->FilterOSPF);
	FUNC3(p, "FilterIPv4", h->Option->FilterIPv4);
	FUNC3(p, "FilterIPv6", h->Option->FilterIPv6);
	FUNC3(p, "FilterNonIP", h->Option->FilterNonIP);
	FUNC3(p, "NoIPv4PacketLog", h->Option->NoIPv4PacketLog);
	FUNC3(p, "NoIPv6PacketLog", h->Option->NoIPv6PacketLog);
	FUNC3(p, "FilterBPDU", h->Option->FilterBPDU);
	FUNC3(p, "NoIPv6DefaultRouterInRAWhenIPv6", h->Option->NoIPv6DefaultRouterInRAWhenIPv6);
	FUNC3(p, "NoMacAddressLog", h->Option->NoMacAddressLog);
	FUNC3(p, "ManageOnlyPrivateIP", h->Option->ManageOnlyPrivateIP);
	FUNC3(p, "ManageOnlyLocalUnicastIPv6", h->Option->ManageOnlyLocalUnicastIPv6);
	FUNC3(p, "DisableIPParsing", h->Option->DisableIPParsing);
	FUNC5(p, "AdjustTcpMssValue", h->Option->AdjustTcpMssValue);
	FUNC3(p, "DisableAdjustTcpMss", h->Option->DisableAdjustTcpMss);
	FUNC3(p, "NoDhcpPacketLogOutsideHub", h->Option->NoDhcpPacketLogOutsideHub);
	FUNC3(p, "DisableHttpParsing", h->Option->DisableHttpParsing);
	FUNC3(p, "DisableUdpAcceleration", h->Option->DisableUdpAcceleration);
	FUNC3(p, "DisableUdpFilterForLocalBridgeNic", h->Option->DisableUdpFilterForLocalBridgeNic);
	FUNC3(p, "ApplyIPv4AccessListOnArpPacket", h->Option->ApplyIPv4AccessListOnArpPacket);
	FUNC3(p, "RemoveDefGwOnDhcpForLocalhost", h->Option->RemoveDefGwOnDhcpForLocalhost);

	FUNC5(p, "SecureNAT_MaxTcpSessionsPerIp", h->Option->SecureNAT_MaxTcpSessionsPerIp);
	FUNC5(p, "SecureNAT_MaxTcpSynSentPerIp", h->Option->SecureNAT_MaxTcpSynSentPerIp);
	FUNC5(p, "SecureNAT_MaxUdpSessionsPerIp", h->Option->SecureNAT_MaxUdpSessionsPerIp);
	FUNC5(p, "SecureNAT_MaxDnsSessionsPerIp", h->Option->SecureNAT_MaxDnsSessionsPerIp);
	FUNC5(p, "SecureNAT_MaxIcmpSessionsPerIp", h->Option->SecureNAT_MaxIcmpSessionsPerIp);
	FUNC5(p, "AccessListIncludeFileCacheLifetime", h->Option->AccessListIncludeFileCacheLifetime);
	FUNC3(p, "DisableKernelModeSecureNAT", h->Option->DisableKernelModeSecureNAT);
	FUNC3(p, "DisableIpRawModeSecureNAT", h->Option->DisableIpRawModeSecureNAT);
	FUNC3(p, "DisableUserModeSecureNAT", h->Option->DisableUserModeSecureNAT);
	FUNC3(p, "DisableCheckMacOnLocalBridge", h->Option->DisableCheckMacOnLocalBridge);
	FUNC3(p, "DisableCorrectIpOffloadChecksum", h->Option->DisableCorrectIpOffloadChecksum);

	FUNC5(p, "SavePacketLog", h->LogSetting.SavePacketLog);
	FUNC5(p, "PacketLogSwitchType", h->LogSetting.PacketLogSwitchType);
	for (i = 0;i < NUM_PACKET_LOG;i++)
	{
		FUNC6(p, "PacketLogConfig", h->LogSetting.PacketLogConfig[i], i, NUM_PACKET_LOG);
	}
	FUNC5(p, "SaveSecurityLog", h->LogSetting.SaveSecurityLog);
	FUNC5(p, "SecurityLogSwitchType", h->LogSetting.SecurityLogSwitchType);
	FUNC4(p, "HashedPassword", h->HashedPassword, SHA1_SIZE);
	FUNC4(p, "SecurePassword", h->SecurePassword, SHA1_SIZE);
	FUNC3(p, "UseHubNameAsDhcpUserClassOption", h->Option->UseHubNameAsDhcpUserClassOption);
	FUNC3(p, "UseHubNameAsRadiusNasId", h->Option->UseHubNameAsRadiusNasId);

	FUNC8(p, h->AccessList);

	if (h->EnableSecureNAT)
	{
		FUNC3(p, "EnableSecureNAT", h->EnableSecureNAT);
		FUNC2(p, h->SecureNATOption);
	}
}