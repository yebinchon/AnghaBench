
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int tmp ;
typedef int safe_hub_name ;
typedef int packet_logger_name ;
typedef int VH_OPTION ;
typedef int UCHAR ;
struct TYPE_17__ {scalar_t__ Bridge; TYPE_2__* Server; int ref; } ;
struct TYPE_14__ {int SavePacketLog; int SaveSecurityLog; void* SecurityLogSwitchType; void* PacketLogSwitchType; int * PacketLogConfig; } ;
struct TYPE_16__ {int EnableSecureNAT; int FarmMember; int WatchDogStarted; int Name; TYPE_4__* Cedar; int HubMacAddr; TYPE_11__* Option; TYPE_1__ LogSetting; void* SecurityLogger; void* PacketLogger; int UserList; void* TicketList; int RadiusServerPort; void* RadiusOptionLock; int HubIpV6; int HubIp; void* SecureNATOption; int * SecureNAT; int HubSignature; void* OldTraffic; void* Traffic; void* LinkList; void* MonitorList; void* IpTable; int MacHashTable; void* NumSessionsBridge; void* NumSessionsClient; void* NumSessions; void* SessionCounter; void* SessionList; int HubDb; void* TrafficLock; scalar_t__ NumLogin; void* LastLoginTime; void* LastCommTime; void* AdminOptionList; int Type; int ref; void* lock_online; void* lock; int SecurePassword; int HashedPassword; } ;
struct TYPE_15__ {scalar_t__ ServerType; } ;
struct TYPE_13__ {scalar_t__ VlanTypeId; int DropBroadcastsInPrivacyFilterMode; int DropArpInPrivacyFilterMode; int NoArpPolling; int NoIpTable; } ;
typedef int IP ;
typedef int HUB_OPTION ;
typedef TYPE_3__ HUB ;
typedef TYPE_4__ CEDAR ;


 int ADMINISTRATOR_USERNAME ;
 int AddHubAdminOptionsDefaults (TYPE_3__*,int) ;
 int AddRef (int ) ;
 int * CompareAdminOption ;
 int * CompareIpTable ;
 int CompareMacTable ;
 int ConvertSafeFileName (char*,int,char*) ;
 int Copy (TYPE_11__*,int *,int) ;
 int CopyStr (char*) ;
 int Format (char*,int,int ,int ) ;
 int GenHubIpAddress (int *,int ) ;
 int GenHubMacAddress (int ,int ) ;
 int GenerateEui64LocalAddress (int *,int ) ;
 int GenerateMachineUniqueHash (int *) ;
 int GetHashOfMacTable ;
 int HUB_PACKET_LOG_DIR_NAME ;
 int HUB_PACKET_LOG_FILE_NAME ;
 int HUB_PACKET_LOG_PREFIX ;
 int HUB_SECURITY_LOG_DIR_NAME ;
 int HUB_SECURITY_LOG_FILE_NAME ;
 int HUB_SECURITY_LOG_PREFIX ;
 int HUB_TYPE_STANDALONE ;
 int HashPassword (int ,int ,char*) ;
 int IPToIPv6Addr (int *,int *) ;
 int InitAccessList (TYPE_3__*) ;
 void* LOG_SWITCH_DAY ;
 scalar_t__ MAC_PROTO_TAGVLAN ;
 int MAX_HUBNAME_LEN ;
 int MAX_SIZE ;
 int MacToStr (char*,int,int ) ;
 int MakeDir (int ) ;
 void* NewCounter () ;
 int NewHashList (int ,int ,int,int) ;
 int NewHubDb () ;
 void* NewList (int *) ;
 void* NewLock () ;
 void* NewLog (char*,int ,void*) ;
 int NewRef () ;
 void* NewTraffic () ;
 int NewUserList () ;
 int NiClearUnsupportedVhOptionForDynamicHub (void*,int) ;
 int NiSetDefaultVhOption (int *,void*) ;
 size_t PACKET_LOG_DHCP ;
 int PACKET_LOG_HEADER ;
 size_t PACKET_LOG_TCP_CONN ;
 int RADIUS_DEFAULT_PORT ;
 int Rand (int ,int) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SHA1_SIZE ;
 int SLog (TYPE_4__*,char*,int ,...) ;
 int SetHubOnline (TYPE_3__*) ;
 int Sha0 (int ,char*,int ) ;
 int StartHubWatchDog (TYPE_3__*) ;
 void* SystemTime64 () ;
 void* ZeroMalloc (int) ;

HUB *NewHub(CEDAR *cedar, char *HubName, HUB_OPTION *option)
{
 HUB *h;
 char packet_logger_name[MAX_SIZE];
 char tmp[MAX_SIZE];
 char safe_hub_name[MAX_HUBNAME_LEN + 1];
 UCHAR hash[SHA1_SIZE];
 IP ip6;

 if (cedar == ((void*)0) || option == ((void*)0) || HubName == ((void*)0))
 {
  return ((void*)0);
 }

 h = ZeroMalloc(sizeof(HUB));
 Sha0(h->HashedPassword, "", 0);
 HashPassword(h->SecurePassword, ADMINISTRATOR_USERNAME, "");
 h->lock = NewLock();
 h->lock_online = NewLock();
 h->ref = NewRef();
 h->Cedar = cedar;
 AddRef(h->Cedar->ref);
 h->Type = HUB_TYPE_STANDALONE;

 ConvertSafeFileName(safe_hub_name, sizeof(safe_hub_name), HubName);
 h->Name = CopyStr(safe_hub_name);


 h->AdminOptionList = NewList(CompareAdminOption);
 AddHubAdminOptionsDefaults(h, 1);

 h->LastCommTime = SystemTime64();
 h->LastLoginTime = SystemTime64();
 h->NumLogin = 0;

 h->TrafficLock = NewLock();

 h->HubDb = NewHubDb();

 h->SessionList = NewList(((void*)0));
 h->SessionCounter = NewCounter();
 h->NumSessions = NewCounter();
 h->NumSessionsClient = NewCounter();
 h->NumSessionsBridge = NewCounter();
 h->MacHashTable = NewHashList(GetHashOfMacTable, CompareMacTable, 8, 0);
 h->IpTable = NewList(CompareIpTable);
 h->MonitorList = NewList(((void*)0));
 h->LinkList = NewList(((void*)0));

 h->Traffic = NewTraffic();
 h->OldTraffic = NewTraffic();

 h->Option = ZeroMalloc(sizeof(HUB_OPTION));
 Copy(h->Option, option, sizeof(HUB_OPTION));

 if (h->Option->VlanTypeId == 0)
 {
  h->Option->VlanTypeId = MAC_PROTO_TAGVLAN;
 }

 h->Option->DropBroadcastsInPrivacyFilterMode = 1;
 h->Option->DropArpInPrivacyFilterMode = 1;

 Rand(h->HubSignature, sizeof(h->HubSignature));


 h->EnableSecureNAT = 0;
 h->SecureNAT = ((void*)0);
 h->SecureNATOption = ZeroMalloc(sizeof(VH_OPTION));
 NiSetDefaultVhOption(((void*)0), h->SecureNATOption);

 if (h->Cedar != ((void*)0) && h->Cedar->Server != ((void*)0) && h->Cedar->Server->ServerType == SERVER_TYPE_FARM_CONTROLLER)
 {
  NiClearUnsupportedVhOptionForDynamicHub(h->SecureNATOption, 1);
 }


 GenerateMachineUniqueHash(hash);
 GenHubMacAddress(h->HubMacAddr, h->Name);
 GenHubIpAddress(&h->HubIp, h->Name);


 GenerateEui64LocalAddress(&ip6, h->HubMacAddr);
 IPToIPv6Addr(&h->HubIpV6, &ip6);

 h->RadiusOptionLock = NewLock();
 h->RadiusServerPort = RADIUS_DEFAULT_PORT;

 h->TicketList = NewList(((void*)0));

 InitAccessList(h);


 h->UserList = NewUserList();


 h->LogSetting.SavePacketLog = h->LogSetting.SaveSecurityLog = 1;
 h->LogSetting.PacketLogConfig[PACKET_LOG_TCP_CONN] =
  h->LogSetting.PacketLogConfig[PACKET_LOG_DHCP] = PACKET_LOG_HEADER;
 h->LogSetting.SecurityLogSwitchType = LOG_SWITCH_DAY;
 h->LogSetting.PacketLogSwitchType = LOG_SWITCH_DAY;

 MakeDir(HUB_SECURITY_LOG_DIR_NAME);
 MakeDir(HUB_PACKET_LOG_DIR_NAME);


 Format(packet_logger_name, sizeof(packet_logger_name), HUB_PACKET_LOG_FILE_NAME, h->Name);
 h->PacketLogger = NewLog(packet_logger_name, HUB_PACKET_LOG_PREFIX, h->LogSetting.PacketLogSwitchType);


 Format(tmp, sizeof(tmp), HUB_SECURITY_LOG_FILE_NAME, h->Name);
 h->SecurityLogger = NewLog(tmp, HUB_SECURITY_LOG_PREFIX, h->LogSetting.SecurityLogSwitchType);

 if (h->Cedar->Server != ((void*)0) && h->Cedar->Server->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  h->FarmMember = 1;
 }


 SetHubOnline(h);

 if (h->Cedar->Bridge)
 {
  h->Option->NoArpPolling = 1;
 }

 if (h->Option->NoArpPolling == 0 && h->Option->NoIpTable == 0)
 {
  StartHubWatchDog(h);
  h->WatchDogStarted = 1;
 }

 SLog(h->Cedar, "LS_HUB_START", h->Name);

 MacToStr(tmp, sizeof(tmp), h->HubMacAddr);
 SLog(h->Cedar, "LS_HUB_MAC", h->Name, tmp);

 return h;
}
