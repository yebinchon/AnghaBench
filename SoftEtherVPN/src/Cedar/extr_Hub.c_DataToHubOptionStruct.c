
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int UseHubNameAsRadiusNasId; int UseHubNameAsDhcpUserClassOption; int NoPhysicalIPOnPacketLog; int DetectDormantSessionInterval; int SecureNAT_RandomizeAssignIp; int DenyAllRadiusLoginWithNoVlanAssign; int AssignVLanIdByRadiusAttribute; int FloodingSendQueueBufferQuota; int SuppressClientUpdateNotification; int DropArpInPrivacyFilterMode; int DropBroadcastsInPrivacyFilterMode; int DoNotSaveHeavySecurityLogs; int MaxLoggedPacketsPerMinute; int BroadcastLimiterStrictMode; int DisableCorrectIpOffloadChecksum; int DisableCheckMacOnLocalBridge; int DisableUserModeSecureNAT; int DisableIpRawModeSecureNAT; int DisableKernelModeSecureNAT; int AccessListIncludeFileCacheLifetime; int SecureNAT_MaxIcmpSessionsPerIp; int SecureNAT_MaxDnsSessionsPerIp; int SecureNAT_MaxUdpSessionsPerIp; int SecureNAT_MaxTcpSynSentPerIp; int SecureNAT_MaxTcpSessionsPerIp; int RemoveDefGwOnDhcpForLocalhost; int ApplyIPv4AccessListOnArpPacket; int DisableUdpFilterForLocalBridgeNic; int DisableUdpAcceleration; int DisableHttpParsing; int NoDhcpPacketLogOutsideHub; int DisableAdjustTcpMss; int AdjustTcpMssValue; int RequiredClientId; int FixForDLinkBPDU; int VlanTypeId; int NoManageVlanId; int NoLookBPDUBridgeId; int NoIPv6DefaultRouterInRAWhenIPv6; int FilterBPDU; int NoIPv6PacketLog; int NoIPv4PacketLog; int FilterNonIP; int FilterIPv6; int FilterIPv4; int FilterOSPF; int FilterPPPoE; int ClientMinimumRequiredBuild; int BroadcastStormDetectionThreshold; int NoSpinLockForPacketDelay; int YieldAfterStorePacket; int DisableIPParsing; int ManageOnlyLocalUnicastIPv6; int ManageOnlyPrivateIP; int NoMacAddressLog; int NoIpTable; int NoIPv6AddrPolling; int NoArpPolling; } ;
typedef int RPC_ADMIN_OPTION ;
typedef TYPE_1__ HUB_OPTION ;


 int GetHubAdminOptionDataAndSet (int *,char*,int *) ;

void DataToHubOptionStruct(HUB_OPTION *o, RPC_ADMIN_OPTION *ao)
{

 if (o == ((void*)0) || ao == ((void*)0))
 {
  return;
 }

 GetHubAdminOptionDataAndSet(ao, "NoAddressPollingIPv4", &o->NoArpPolling);
 GetHubAdminOptionDataAndSet(ao, "NoAddressPollingIPv6", &o->NoIPv6AddrPolling);
 GetHubAdminOptionDataAndSet(ao, "NoIpTable", &o->NoIpTable);
 GetHubAdminOptionDataAndSet(ao, "NoMacAddressLog", &o->NoMacAddressLog);
 GetHubAdminOptionDataAndSet(ao, "ManageOnlyPrivateIP", &o->ManageOnlyPrivateIP);
 GetHubAdminOptionDataAndSet(ao, "ManageOnlyLocalUnicastIPv6", &o->ManageOnlyLocalUnicastIPv6);
 GetHubAdminOptionDataAndSet(ao, "DisableIPParsing", &o->DisableIPParsing);
 GetHubAdminOptionDataAndSet(ao, "YieldAfterStorePacket", &o->YieldAfterStorePacket);
 GetHubAdminOptionDataAndSet(ao, "NoSpinLockForPacketDelay", &o->NoSpinLockForPacketDelay);
 GetHubAdminOptionDataAndSet(ao, "BroadcastStormDetectionThreshold", &o->BroadcastStormDetectionThreshold);
 GetHubAdminOptionDataAndSet(ao, "ClientMinimumRequiredBuild", &o->ClientMinimumRequiredBuild);
 GetHubAdminOptionDataAndSet(ao, "FilterPPPoE", &o->FilterPPPoE);
 GetHubAdminOptionDataAndSet(ao, "FilterOSPF", &o->FilterOSPF);
 GetHubAdminOptionDataAndSet(ao, "FilterIPv4", &o->FilterIPv4);
 GetHubAdminOptionDataAndSet(ao, "FilterIPv6", &o->FilterIPv6);
 GetHubAdminOptionDataAndSet(ao, "FilterNonIP", &o->FilterNonIP);
 GetHubAdminOptionDataAndSet(ao, "NoIPv4PacketLog", &o->NoIPv4PacketLog);
 GetHubAdminOptionDataAndSet(ao, "NoIPv6PacketLog", &o->NoIPv6PacketLog);
 GetHubAdminOptionDataAndSet(ao, "FilterBPDU", &o->FilterBPDU);
 GetHubAdminOptionDataAndSet(ao, "NoIPv6DefaultRouterInRAWhenIPv6", &o->NoIPv6DefaultRouterInRAWhenIPv6);
 GetHubAdminOptionDataAndSet(ao, "NoLookBPDUBridgeId", &o->NoLookBPDUBridgeId);
 GetHubAdminOptionDataAndSet(ao, "NoManageVlanId", &o->NoManageVlanId);
 GetHubAdminOptionDataAndSet(ao, "VlanTypeId", &o->VlanTypeId);
 GetHubAdminOptionDataAndSet(ao, "FixForDLinkBPDU", &o->FixForDLinkBPDU);
 GetHubAdminOptionDataAndSet(ao, "RequiredClientId", &o->RequiredClientId);
 GetHubAdminOptionDataAndSet(ao, "AdjustTcpMssValue", &o->AdjustTcpMssValue);
 GetHubAdminOptionDataAndSet(ao, "DisableAdjustTcpMss", &o->DisableAdjustTcpMss);
 GetHubAdminOptionDataAndSet(ao, "NoDhcpPacketLogOutsideHub", &o->NoDhcpPacketLogOutsideHub);
 GetHubAdminOptionDataAndSet(ao, "DisableHttpParsing", &o->DisableHttpParsing);
 GetHubAdminOptionDataAndSet(ao, "DisableUdpAcceleration", &o->DisableUdpAcceleration);
 GetHubAdminOptionDataAndSet(ao, "DisableUdpFilterForLocalBridgeNic", &o->DisableUdpFilterForLocalBridgeNic);
 GetHubAdminOptionDataAndSet(ao, "ApplyIPv4AccessListOnArpPacket", &o->ApplyIPv4AccessListOnArpPacket);
 GetHubAdminOptionDataAndSet(ao, "RemoveDefGwOnDhcpForLocalhost", &o->RemoveDefGwOnDhcpForLocalhost);
 GetHubAdminOptionDataAndSet(ao, "SecureNAT_MaxTcpSessionsPerIp", &o->SecureNAT_MaxTcpSessionsPerIp);
 GetHubAdminOptionDataAndSet(ao, "SecureNAT_MaxTcpSynSentPerIp", &o->SecureNAT_MaxTcpSynSentPerIp);
 GetHubAdminOptionDataAndSet(ao, "SecureNAT_MaxUdpSessionsPerIp", &o->SecureNAT_MaxUdpSessionsPerIp);
 GetHubAdminOptionDataAndSet(ao, "SecureNAT_MaxDnsSessionsPerIp", &o->SecureNAT_MaxDnsSessionsPerIp);
 GetHubAdminOptionDataAndSet(ao, "SecureNAT_MaxIcmpSessionsPerIp", &o->SecureNAT_MaxIcmpSessionsPerIp);
 GetHubAdminOptionDataAndSet(ao, "AccessListIncludeFileCacheLifetime", &o->AccessListIncludeFileCacheLifetime);
 GetHubAdminOptionDataAndSet(ao, "DisableKernelModeSecureNAT", &o->DisableKernelModeSecureNAT);
 GetHubAdminOptionDataAndSet(ao, "DisableIpRawModeSecureNAT", &o->DisableIpRawModeSecureNAT);
 GetHubAdminOptionDataAndSet(ao, "DisableUserModeSecureNAT", &o->DisableUserModeSecureNAT);
 GetHubAdminOptionDataAndSet(ao, "DisableCheckMacOnLocalBridge", &o->DisableCheckMacOnLocalBridge);
 GetHubAdminOptionDataAndSet(ao, "DisableCorrectIpOffloadChecksum", &o->DisableCorrectIpOffloadChecksum);
 GetHubAdminOptionDataAndSet(ao, "BroadcastLimiterStrictMode", &o->BroadcastLimiterStrictMode);
 GetHubAdminOptionDataAndSet(ao, "MaxLoggedPacketsPerMinute", &o->MaxLoggedPacketsPerMinute);
 GetHubAdminOptionDataAndSet(ao, "DoNotSaveHeavySecurityLogs", &o->DoNotSaveHeavySecurityLogs);
 GetHubAdminOptionDataAndSet(ao, "DropBroadcastsInPrivacyFilterMode", &o->DropBroadcastsInPrivacyFilterMode);
 GetHubAdminOptionDataAndSet(ao, "DropArpInPrivacyFilterMode", &o->DropArpInPrivacyFilterMode);
 GetHubAdminOptionDataAndSet(ao, "SuppressClientUpdateNotification", &o->SuppressClientUpdateNotification);
 GetHubAdminOptionDataAndSet(ao, "FloodingSendQueueBufferQuota", &o->FloodingSendQueueBufferQuota);
 GetHubAdminOptionDataAndSet(ao, "AssignVLanIdByRadiusAttribute", &o->AssignVLanIdByRadiusAttribute);
 GetHubAdminOptionDataAndSet(ao, "DenyAllRadiusLoginWithNoVlanAssign", &o->DenyAllRadiusLoginWithNoVlanAssign);
 GetHubAdminOptionDataAndSet(ao, "SecureNAT_RandomizeAssignIp", &o->SecureNAT_RandomizeAssignIp);
 GetHubAdminOptionDataAndSet(ao, "DetectDormantSessionInterval", &o->DetectDormantSessionInterval);
 GetHubAdminOptionDataAndSet(ao, "NoPhysicalIPOnPacketLog", &o->NoPhysicalIPOnPacketLog);
 GetHubAdminOptionDataAndSet(ao, "UseHubNameAsDhcpUserClassOption", &o->UseHubNameAsDhcpUserClassOption);
 GetHubAdminOptionDataAndSet(ao, "UseHubNameAsRadiusNasId", &o->UseHubNameAsRadiusNasId);
}
