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
struct TYPE_3__ {scalar_t__ UseHubNameAsRadiusNasId; scalar_t__ UseHubNameAsDhcpUserClassOption; scalar_t__ DisableCorrectIpOffloadChecksum; scalar_t__ DisableCheckMacOnLocalBridge; scalar_t__ DisableUserModeSecureNAT; scalar_t__ DisableIpRawModeSecureNAT; scalar_t__ DisableKernelModeSecureNAT; int /*<<< orphan*/  AccessListIncludeFileCacheLifetime; int /*<<< orphan*/  SecureNAT_MaxIcmpSessionsPerIp; int /*<<< orphan*/  SecureNAT_MaxDnsSessionsPerIp; int /*<<< orphan*/  SecureNAT_MaxUdpSessionsPerIp; int /*<<< orphan*/  SecureNAT_MaxTcpSynSentPerIp; int /*<<< orphan*/  SecureNAT_MaxTcpSessionsPerIp; scalar_t__ RemoveDefGwOnDhcpForLocalhost; scalar_t__ ApplyIPv4AccessListOnArpPacket; scalar_t__ DisableUdpFilterForLocalBridgeNic; scalar_t__ DisableUdpAcceleration; scalar_t__ DisableHttpParsing; scalar_t__ NoDhcpPacketLogOutsideHub; scalar_t__ DisableAdjustTcpMss; int /*<<< orphan*/  AdjustTcpMssValue; scalar_t__ NoLookBPDUBridgeId; int /*<<< orphan*/  DetectDormantSessionInterval; scalar_t__ NoPhysicalIPOnPacketLog; scalar_t__ SecureNAT_RandomizeAssignIp; scalar_t__ DenyAllRadiusLoginWithNoVlanAssign; scalar_t__ AssignVLanIdByRadiusAttribute; scalar_t__ SuppressClientUpdateNotification; scalar_t__ DropArpInPrivacyFilterMode; scalar_t__ DropBroadcastsInPrivacyFilterMode; scalar_t__ DoNotSaveHeavySecurityLogs; int /*<<< orphan*/  FloodingSendQueueBufferQuota; int /*<<< orphan*/  MaxLoggedPacketsPerMinute; scalar_t__ BroadcastLimiterStrictMode; scalar_t__ FixForDLinkBPDU; int /*<<< orphan*/  VlanTypeId; scalar_t__ NoManageVlanId; int /*<<< orphan*/  RequiredClientId; int /*<<< orphan*/  ClientMinimumRequiredBuild; int /*<<< orphan*/  BroadcastStormDetectionThreshold; scalar_t__ NoSpinLockForPacketDelay; scalar_t__ YieldAfterStorePacket; scalar_t__ DisableIPParsing; scalar_t__ ManageOnlyLocalUnicastIPv6; scalar_t__ ManageOnlyPrivateIP; scalar_t__ NoMacAddressLog; scalar_t__ NoIPv6DefaultRouterInRAWhenIPv6; scalar_t__ FilterBPDU; scalar_t__ NoIPv6PacketLog; scalar_t__ NoIPv4PacketLog; scalar_t__ FilterNonIP; scalar_t__ FilterIPv6; scalar_t__ FilterIPv4; scalar_t__ FilterOSPF; scalar_t__ FilterPPPoE; scalar_t__ NoEnum; scalar_t__ NoIpTable; scalar_t__ NoIPv6AddrPolling; scalar_t__ NoArpPolling; int /*<<< orphan*/  MaxSession; } ;
typedef  TYPE_1__ HUB_OPTION ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 

void FUNC4(FOLDER *f, HUB_OPTION *o)
{
	char tmp[MAX_SIZE];
	// Validate arguments
	if (f == NULL || o == NULL)
	{
		return;
	}

	FUNC1(f, "MaxSession", o->MaxSession);
	FUNC0(f, "NoArpPolling", o->NoArpPolling);
	FUNC0(f, "NoIPv6AddrPolling", o->NoIPv6AddrPolling);
	FUNC0(f, "NoIpTable", o->NoIpTable);
	FUNC0(f, "NoEnum", o->NoEnum);
	FUNC0(f, "FilterPPPoE", o->FilterPPPoE);
	FUNC0(f, "FilterOSPF", o->FilterOSPF);
	FUNC0(f, "FilterIPv4", o->FilterIPv4);
	FUNC0(f, "FilterIPv6", o->FilterIPv6);
	FUNC0(f, "FilterNonIP", o->FilterNonIP);
	FUNC0(f, "NoIPv4PacketLog", o->NoIPv4PacketLog);
	FUNC0(f, "NoIPv6PacketLog", o->NoIPv6PacketLog);
	FUNC0(f, "FilterBPDU", o->FilterBPDU);
	FUNC0(f, "NoIPv6DefaultRouterInRAWhenIPv6", o->NoIPv6DefaultRouterInRAWhenIPv6);
	FUNC0(f, "NoMacAddressLog", o->NoMacAddressLog);
	FUNC0(f, "ManageOnlyPrivateIP", o->ManageOnlyPrivateIP);
	FUNC0(f, "ManageOnlyLocalUnicastIPv6", o->ManageOnlyLocalUnicastIPv6);
	FUNC0(f, "DisableIPParsing", o->DisableIPParsing);
	FUNC0(f, "YieldAfterStorePacket", o->YieldAfterStorePacket);
	FUNC0(f, "NoSpinLockForPacketDelay", o->NoSpinLockForPacketDelay);
	FUNC1(f, "BroadcastStormDetectionThreshold", o->BroadcastStormDetectionThreshold);
	FUNC1(f, "ClientMinimumRequiredBuild", o->ClientMinimumRequiredBuild);
	FUNC1(f, "RequiredClientId", o->RequiredClientId);
	FUNC0(f, "NoManageVlanId", o->NoManageVlanId);
	FUNC3(tmp, sizeof(tmp), "0x%x", o->VlanTypeId);
	FUNC2(f, "VlanTypeId", tmp);
	if (o->FixForDLinkBPDU)
	{
		FUNC0(f, "FixForDLinkBPDU", o->FixForDLinkBPDU);
	}
	FUNC0(f, "BroadcastLimiterStrictMode", o->BroadcastLimiterStrictMode);
	FUNC1(f, "MaxLoggedPacketsPerMinute", o->MaxLoggedPacketsPerMinute);
	FUNC1(f, "FloodingSendQueueBufferQuota", o->FloodingSendQueueBufferQuota);
	FUNC0(f, "DoNotSaveHeavySecurityLogs", o->DoNotSaveHeavySecurityLogs);
	FUNC0(f, "DropBroadcastsInPrivacyFilterMode", o->DropBroadcastsInPrivacyFilterMode);
	FUNC0(f, "DropArpInPrivacyFilterMode", o->DropArpInPrivacyFilterMode);
	FUNC0(f, "SuppressClientUpdateNotification", o->SuppressClientUpdateNotification);
	FUNC0(f, "AssignVLanIdByRadiusAttribute", o->AssignVLanIdByRadiusAttribute);
	FUNC0(f, "DenyAllRadiusLoginWithNoVlanAssign", o->DenyAllRadiusLoginWithNoVlanAssign);
	FUNC0(f, "SecureNAT_RandomizeAssignIp", o->SecureNAT_RandomizeAssignIp);
	FUNC0(f, "NoPhysicalIPOnPacketLog", o->NoPhysicalIPOnPacketLog);
	FUNC1(f, "DetectDormantSessionInterval", o->DetectDormantSessionInterval);
	FUNC0(f, "NoLookBPDUBridgeId", o->NoLookBPDUBridgeId);
	FUNC1(f, "AdjustTcpMssValue", o->AdjustTcpMssValue);
	FUNC0(f, "DisableAdjustTcpMss", o->DisableAdjustTcpMss);
	FUNC0(f, "NoDhcpPacketLogOutsideHub", o->NoDhcpPacketLogOutsideHub);
	FUNC0(f, "DisableHttpParsing", o->DisableHttpParsing);
	FUNC0(f, "DisableUdpAcceleration", o->DisableUdpAcceleration);
	FUNC0(f, "DisableUdpFilterForLocalBridgeNic", o->DisableUdpFilterForLocalBridgeNic);
	FUNC0(f, "ApplyIPv4AccessListOnArpPacket", o->ApplyIPv4AccessListOnArpPacket);
	FUNC0(f, "RemoveDefGwOnDhcpForLocalhost", o->RemoveDefGwOnDhcpForLocalhost);
	FUNC1(f, "SecureNAT_MaxTcpSessionsPerIp", o->SecureNAT_MaxTcpSessionsPerIp);
	FUNC1(f, "SecureNAT_MaxTcpSynSentPerIp", o->SecureNAT_MaxTcpSynSentPerIp);
	FUNC1(f, "SecureNAT_MaxUdpSessionsPerIp", o->SecureNAT_MaxUdpSessionsPerIp);
	FUNC1(f, "SecureNAT_MaxDnsSessionsPerIp", o->SecureNAT_MaxDnsSessionsPerIp);
	FUNC1(f, "SecureNAT_MaxIcmpSessionsPerIp", o->SecureNAT_MaxIcmpSessionsPerIp);
	FUNC1(f, "AccessListIncludeFileCacheLifetime", o->AccessListIncludeFileCacheLifetime);
	FUNC0(f, "DisableKernelModeSecureNAT", o->DisableKernelModeSecureNAT);
	FUNC0(f, "DisableIpRawModeSecureNAT", o->DisableIpRawModeSecureNAT);
	FUNC0(f, "DisableUserModeSecureNAT", o->DisableUserModeSecureNAT);
	FUNC0(f, "DisableCheckMacOnLocalBridge", o->DisableCheckMacOnLocalBridge);
	FUNC0(f, "DisableCorrectIpOffloadChecksum", o->DisableCorrectIpOffloadChecksum);
	FUNC0(f, "UseHubNameAsDhcpUserClassOption", o->UseHubNameAsDhcpUserClassOption);
	FUNC0(f, "UseHubNameAsRadiusNasId", o->UseHubNameAsRadiusNasId);
}