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
struct TYPE_3__ {int /*<<< orphan*/  UseHubNameAsRadiusNasId; int /*<<< orphan*/  UseHubNameAsDhcpUserClassOption; int /*<<< orphan*/  NoPhysicalIPOnPacketLog; int /*<<< orphan*/  DetectDormantSessionInterval; int /*<<< orphan*/  SecureNAT_RandomizeAssignIp; int /*<<< orphan*/  DenyAllRadiusLoginWithNoVlanAssign; int /*<<< orphan*/  AssignVLanIdByRadiusAttribute; int /*<<< orphan*/  FloodingSendQueueBufferQuota; int /*<<< orphan*/  SuppressClientUpdateNotification; int /*<<< orphan*/  DropArpInPrivacyFilterMode; int /*<<< orphan*/  DropBroadcastsInPrivacyFilterMode; int /*<<< orphan*/  DoNotSaveHeavySecurityLogs; int /*<<< orphan*/  MaxLoggedPacketsPerMinute; int /*<<< orphan*/  BroadcastLimiterStrictMode; int /*<<< orphan*/  DisableCorrectIpOffloadChecksum; int /*<<< orphan*/  DisableCheckMacOnLocalBridge; int /*<<< orphan*/  DisableUserModeSecureNAT; int /*<<< orphan*/  DisableIpRawModeSecureNAT; int /*<<< orphan*/  DisableKernelModeSecureNAT; int /*<<< orphan*/  AccessListIncludeFileCacheLifetime; int /*<<< orphan*/  SecureNAT_MaxIcmpSessionsPerIp; int /*<<< orphan*/  SecureNAT_MaxDnsSessionsPerIp; int /*<<< orphan*/  SecureNAT_MaxUdpSessionsPerIp; int /*<<< orphan*/  SecureNAT_MaxTcpSynSentPerIp; int /*<<< orphan*/  SecureNAT_MaxTcpSessionsPerIp; int /*<<< orphan*/  RemoveDefGwOnDhcpForLocalhost; int /*<<< orphan*/  ApplyIPv4AccessListOnArpPacket; int /*<<< orphan*/  DisableUdpFilterForLocalBridgeNic; int /*<<< orphan*/  DisableUdpAcceleration; int /*<<< orphan*/  DisableHttpParsing; int /*<<< orphan*/  NoDhcpPacketLogOutsideHub; int /*<<< orphan*/  DisableAdjustTcpMss; int /*<<< orphan*/  AdjustTcpMssValue; int /*<<< orphan*/  RequiredClientId; int /*<<< orphan*/  FixForDLinkBPDU; int /*<<< orphan*/  VlanTypeId; int /*<<< orphan*/  NoManageVlanId; int /*<<< orphan*/  NoLookBPDUBridgeId; int /*<<< orphan*/  NoIPv6DefaultRouterInRAWhenIPv6; int /*<<< orphan*/  FilterBPDU; int /*<<< orphan*/  NoIPv6PacketLog; int /*<<< orphan*/  NoIPv4PacketLog; int /*<<< orphan*/  FilterNonIP; int /*<<< orphan*/  FilterIPv6; int /*<<< orphan*/  FilterIPv4; int /*<<< orphan*/  FilterOSPF; int /*<<< orphan*/  FilterPPPoE; int /*<<< orphan*/  ClientMinimumRequiredBuild; int /*<<< orphan*/  BroadcastStormDetectionThreshold; int /*<<< orphan*/  NoSpinLockForPacketDelay; int /*<<< orphan*/  YieldAfterStorePacket; int /*<<< orphan*/  DisableIPParsing; int /*<<< orphan*/  ManageOnlyLocalUnicastIPv6; int /*<<< orphan*/  ManageOnlyPrivateIP; int /*<<< orphan*/  NoMacAddressLog; int /*<<< orphan*/  NoIpTable; int /*<<< orphan*/  NoIPv6AddrPolling; int /*<<< orphan*/  NoArpPolling; } ;
typedef  int /*<<< orphan*/  RPC_ADMIN_OPTION ;
typedef  TYPE_1__ HUB_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

void FUNC1(HUB_OPTION *o, RPC_ADMIN_OPTION *ao)
{
	// Validate arguments
	if (o == NULL || ao == NULL)
	{
		return;
	}

	FUNC0(ao, "NoAddressPollingIPv4", &o->NoArpPolling);
	FUNC0(ao, "NoAddressPollingIPv6", &o->NoIPv6AddrPolling);
	FUNC0(ao, "NoIpTable", &o->NoIpTable);
	FUNC0(ao, "NoMacAddressLog", &o->NoMacAddressLog);
	FUNC0(ao, "ManageOnlyPrivateIP", &o->ManageOnlyPrivateIP);
	FUNC0(ao, "ManageOnlyLocalUnicastIPv6", &o->ManageOnlyLocalUnicastIPv6);
	FUNC0(ao, "DisableIPParsing", &o->DisableIPParsing);
	FUNC0(ao, "YieldAfterStorePacket", &o->YieldAfterStorePacket);
	FUNC0(ao, "NoSpinLockForPacketDelay", &o->NoSpinLockForPacketDelay);
	FUNC0(ao, "BroadcastStormDetectionThreshold", &o->BroadcastStormDetectionThreshold);
	FUNC0(ao, "ClientMinimumRequiredBuild", &o->ClientMinimumRequiredBuild);
	FUNC0(ao, "FilterPPPoE", &o->FilterPPPoE);
	FUNC0(ao, "FilterOSPF", &o->FilterOSPF);
	FUNC0(ao, "FilterIPv4", &o->FilterIPv4);
	FUNC0(ao, "FilterIPv6", &o->FilterIPv6);
	FUNC0(ao, "FilterNonIP", &o->FilterNonIP);
	FUNC0(ao, "NoIPv4PacketLog", &o->NoIPv4PacketLog);
	FUNC0(ao, "NoIPv6PacketLog", &o->NoIPv6PacketLog);
	FUNC0(ao, "FilterBPDU", &o->FilterBPDU);
	FUNC0(ao, "NoIPv6DefaultRouterInRAWhenIPv6", &o->NoIPv6DefaultRouterInRAWhenIPv6);
	FUNC0(ao, "NoLookBPDUBridgeId", &o->NoLookBPDUBridgeId);
	FUNC0(ao, "NoManageVlanId", &o->NoManageVlanId);
	FUNC0(ao, "VlanTypeId", &o->VlanTypeId);
	FUNC0(ao, "FixForDLinkBPDU", &o->FixForDLinkBPDU);
	FUNC0(ao, "RequiredClientId", &o->RequiredClientId);
	FUNC0(ao, "AdjustTcpMssValue", &o->AdjustTcpMssValue);
	FUNC0(ao, "DisableAdjustTcpMss", &o->DisableAdjustTcpMss);
	FUNC0(ao, "NoDhcpPacketLogOutsideHub", &o->NoDhcpPacketLogOutsideHub);
	FUNC0(ao, "DisableHttpParsing", &o->DisableHttpParsing);
	FUNC0(ao, "DisableUdpAcceleration", &o->DisableUdpAcceleration);
	FUNC0(ao, "DisableUdpFilterForLocalBridgeNic", &o->DisableUdpFilterForLocalBridgeNic);
	FUNC0(ao, "ApplyIPv4AccessListOnArpPacket", &o->ApplyIPv4AccessListOnArpPacket);
	FUNC0(ao, "RemoveDefGwOnDhcpForLocalhost", &o->RemoveDefGwOnDhcpForLocalhost);
	FUNC0(ao, "SecureNAT_MaxTcpSessionsPerIp", &o->SecureNAT_MaxTcpSessionsPerIp);
	FUNC0(ao, "SecureNAT_MaxTcpSynSentPerIp", &o->SecureNAT_MaxTcpSynSentPerIp);
	FUNC0(ao, "SecureNAT_MaxUdpSessionsPerIp", &o->SecureNAT_MaxUdpSessionsPerIp);
	FUNC0(ao, "SecureNAT_MaxDnsSessionsPerIp", &o->SecureNAT_MaxDnsSessionsPerIp);
	FUNC0(ao, "SecureNAT_MaxIcmpSessionsPerIp", &o->SecureNAT_MaxIcmpSessionsPerIp);
	FUNC0(ao, "AccessListIncludeFileCacheLifetime", &o->AccessListIncludeFileCacheLifetime);
	FUNC0(ao, "DisableKernelModeSecureNAT", &o->DisableKernelModeSecureNAT);
	FUNC0(ao, "DisableIpRawModeSecureNAT", &o->DisableIpRawModeSecureNAT);
	FUNC0(ao, "DisableUserModeSecureNAT", &o->DisableUserModeSecureNAT);
	FUNC0(ao, "DisableCheckMacOnLocalBridge", &o->DisableCheckMacOnLocalBridge);
	FUNC0(ao, "DisableCorrectIpOffloadChecksum", &o->DisableCorrectIpOffloadChecksum);
	FUNC0(ao, "BroadcastLimiterStrictMode", &o->BroadcastLimiterStrictMode);
	FUNC0(ao, "MaxLoggedPacketsPerMinute", &o->MaxLoggedPacketsPerMinute);
	FUNC0(ao, "DoNotSaveHeavySecurityLogs", &o->DoNotSaveHeavySecurityLogs);
	FUNC0(ao, "DropBroadcastsInPrivacyFilterMode", &o->DropBroadcastsInPrivacyFilterMode);
	FUNC0(ao, "DropArpInPrivacyFilterMode", &o->DropArpInPrivacyFilterMode);
	FUNC0(ao, "SuppressClientUpdateNotification", &o->SuppressClientUpdateNotification);
	FUNC0(ao, "FloodingSendQueueBufferQuota", &o->FloodingSendQueueBufferQuota);
	FUNC0(ao, "AssignVLanIdByRadiusAttribute", &o->AssignVLanIdByRadiusAttribute);
	FUNC0(ao, "DenyAllRadiusLoginWithNoVlanAssign", &o->DenyAllRadiusLoginWithNoVlanAssign);
	FUNC0(ao, "SecureNAT_RandomizeAssignIp", &o->SecureNAT_RandomizeAssignIp);
	FUNC0(ao, "DetectDormantSessionInterval", &o->DetectDormantSessionInterval);
	FUNC0(ao, "NoPhysicalIPOnPacketLog", &o->NoPhysicalIPOnPacketLog);
	FUNC0(ao, "UseHubNameAsDhcpUserClassOption", &o->UseHubNameAsDhcpUserClassOption);
	FUNC0(ao, "UseHubNameAsRadiusNasId", &o->UseHubNameAsRadiusNasId);
}