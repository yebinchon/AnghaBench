
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_43__ TYPE_7__ ;
typedef struct TYPE_42__ TYPE_6__ ;
typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_23__ ;
typedef struct TYPE_37__ TYPE_1__ ;


typedef int server_str ;
typedef int mschap_v2_server_response_20 ;
typedef int macstr ;
typedef int info ;
typedef int X ;
typedef int UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_37__ {char* ClientProductName; char* ServerProductName; char* ClientOsName; char* ClientOsVer; char* ClientOsProductId; char* ClientHostname; char* HubName; int ServerIpAddress6; int ClientIpAddress6; int UniqueId; void* ServerPort; void* ServerIpAddress; int ServerHostname; void* ClientPort; void* ClientIpAddress; void* ServerProductBuild; void* ServerProductVer; void* ClientProductBuild; void* ClientProductVer; } ;
typedef TYPE_1__ UCHAR ;
struct TYPE_43__ {int Size; int Buf; } ;
struct TYPE_42__ {scalar_t__ Version; scalar_t__ Build; int ref; } ;
struct TYPE_41__ {int Ref; } ;
struct TYPE_40__ {scalar_t__ Layer; char* ClientHostname; char* HubName; char* UserName; char* Password; int IPv4ReceivedQueue; int ArpTable; int Interrupt; TYPE_2__* Sock; int ConnectionName; int SessionName; TYPE_1__* MacAddress; int MsChapV2_ServerResponse; int Policy; int random; int FlushList; TYPE_6__* Cedar; } ;
struct TYPE_38__ {TYPE_1__* ipv6_addr; } ;
struct TYPE_39__ {scalar_t__ LocalPort; scalar_t__ RemotePort; TYPE_23__ RemoteIP; TYPE_23__ LocalIP; } ;
typedef TYPE_2__ SOCK ;
typedef int PACK ;
typedef TYPE_1__ NODE_INFO ;
typedef TYPE_4__ IPC ;
typedef int IP ;
typedef TYPE_5__ EAP_CLIENT ;
typedef TYPE_6__ CEDAR ;
typedef TYPE_7__ BUF ;


 int AddRef (int ) ;
 int ClientUploadSignature (TYPE_2__*) ;
 TYPE_2__* ConnectInProc (TYPE_2__*,int *,scalar_t__,int *,scalar_t__) ;
 int Copy (int ,TYPE_1__*,int) ;
 int Debug (char*,...) ;
 int Disconnect (TYPE_2__*) ;
 scalar_t__ ERR_AUTH_FAILED ;
 scalar_t__ ERR_DISCONNECTED ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_PROTOCOL_ERROR ;
 void* Endian32 (scalar_t__) ;
 int FreeBuf (TYPE_7__*) ;
 int FreeIPC (TYPE_4__*) ;
 int FreePack (int *) ;
 scalar_t__ GetErrorFromPack (int *) ;
 int GetHello (int *,int ,scalar_t__*,scalar_t__*,char*,int) ;
 TYPE_2__* GetInProcListeningSock (TYPE_6__*) ;
 int * HttpClientRecv (TYPE_2__*) ;
 int HttpClientSend (TYPE_2__*,int *) ;
 int IPCCmpArpTable ;
 scalar_t__ IPC_LAYER_2 ;
 int IPToStr (int ,int,TYPE_23__*) ;
 void* IPToUINT (TYPE_23__*) ;
 scalar_t__ IsEmptyStr (char*) ;
 scalar_t__ IsIP6 (TYPE_23__*) ;
 scalar_t__ IsZero (TYPE_1__*,int) ;
 int MAX_SIZE ;
 int MacToStr (char*,int,TYPE_1__*) ;
 TYPE_7__* NewBuf () ;
 int NewInterruptManager () ;
 int NewList (int ) ;
 int NewQueue () ;
 int NewTubeFlushList () ;
 int OutRpcNodeInfo (int *,TYPE_1__*) ;
 int PackAddBool (int *,char*,int) ;
 int PackAddData (int *,char*,TYPE_1__*,int) ;
 int PackAddInt (int *,char*,scalar_t__) ;
 int PackAddInt64 (int *,char*,int ) ;
 int PackAddStr (int *,char*,char*) ;
 int PackGetData2 (int *,char*,TYPE_1__*,int) ;
 int PackGetStr (int *,char*,char*,int) ;
 int * PackLoginWithOpenVPNCertificate (char*,char*,int *) ;
 int * PackLoginWithPlainPassword (char*,char*,char*) ;
 int ParseWelcomeFromPack (int *,int ,int,int ,int,int *) ;
 int ReleaseSock (TYPE_2__*) ;
 int SHA1_SIZE ;
 int Sha1 (TYPE_1__*,int ,int ) ;
 int StrCpy (char*,int,char*) ;
 int WriteBuf (TYPE_7__*,int *,int) ;
 int WriteBufStr (TYPE_7__*,char*) ;
 int Zero (TYPE_1__*,int) ;
 TYPE_4__* ZeroMalloc (int) ;

IPC *NewIPC(CEDAR *cedar, char *client_name, char *postfix, char *hubname, char *username, char *password,
   UINT *error_code, IP *client_ip, UINT client_port, IP *server_ip, UINT server_port,
   char *client_hostname, char *crypt_name,
   bool bridge_mode, UINT mss, EAP_CLIENT *eap_client, X *client_certificate,
   UINT layer)
{
 IPC *ipc;
 UINT dummy_int = 0;
 SOCK *a;
 SOCK *s;
 PACK *p;
 UINT err = ERR_INTERNAL_ERROR;
 char server_str[MAX_SIZE];
 char macstr[30];
 UINT server_ver, server_build;
 UCHAR unique[SHA1_SIZE];
 NODE_INFO info;
 BUF *b;
 UCHAR mschap_v2_server_response_20[20];

 if (cedar == ((void*)0) || username == ((void*)0) || password == ((void*)0) || client_hostname == ((void*)0))
 {
  return ((void*)0);
 }
 if (IsEmptyStr(client_name))
 {
  client_name = "InProc VPN Connection";
 }
 if (IsEmptyStr(crypt_name))
 {
  crypt_name = "";
 }
 if (error_code == ((void*)0))
 {
  error_code = &dummy_int;
 }

 Zero(mschap_v2_server_response_20, sizeof(mschap_v2_server_response_20));

 err = *error_code = ERR_INTERNAL_ERROR;

 a = GetInProcListeningSock(cedar);
 if (a == ((void*)0))
 {
  return ((void*)0);
 }

 ipc = ZeroMalloc(sizeof(IPC));

 ipc->Cedar = cedar;
 AddRef(cedar->ref);

 ipc->Layer = layer;
 if (ipc->Layer == 0)
 {
  ipc->Layer = IPC_LAYER_2;
 }

 ipc->FlushList = NewTubeFlushList();

 StrCpy(ipc->ClientHostname, sizeof(ipc->ClientHostname), client_hostname);
 StrCpy(ipc->HubName, sizeof(ipc->HubName), hubname);
 StrCpy(ipc->UserName, sizeof(ipc->UserName), username);
 StrCpy(ipc->Password, sizeof(ipc->Password), password);


 s = ConnectInProc(a, client_ip, client_port, server_ip, server_port);
 if (s == ((void*)0))
 {
  goto LABEL_ERROR;
 }


 if (ClientUploadSignature(s) == 0)
 {
  err = ERR_DISCONNECTED;
  goto LABEL_ERROR;
 }

 p = HttpClientRecv(s);
 if (p == ((void*)0))
 {
  err = ERR_DISCONNECTED;
  goto LABEL_ERROR;
 }

 err = GetErrorFromPack(p);
 if (err != ERR_NO_ERROR)
 {
  FreePack(p);
  goto LABEL_ERROR;
 }

 if (GetHello(p, ipc->random, &server_ver, &server_build, server_str, sizeof(server_str)) == 0)
 {
  FreePack(p);
  err = ERR_DISCONNECTED;
  goto LABEL_ERROR;
 }

 FreePack(p);


 if (client_certificate != ((void*)0))
 {
  p = PackLoginWithOpenVPNCertificate(hubname, username, client_certificate);
 }
 else
 {
  p = PackLoginWithPlainPassword(hubname, username, password);
 }

 if (p == ((void*)0))
 {
  err = ERR_AUTH_FAILED;
  goto LABEL_ERROR;
 }

 PackAddStr(p, "hello", client_name);
 PackAddInt(p, "client_ver", cedar->Version);
 PackAddInt(p, "client_build", cedar->Build);
 PackAddInt(p, "max_connection", 1);
 PackAddInt(p, "use_encrypt", 0);
 PackAddInt(p, "use_compress", 0);
 PackAddInt(p, "half_connection", 0);
 PackAddInt(p, "adjust_mss", mss);
 PackAddBool(p, "require_bridge_routing_mode", bridge_mode);
 PackAddBool(p, "require_monitor_mode", 0);
 PackAddBool(p, "qos", 0);

 if (eap_client != ((void*)0))
 {
  UINT64 ptr = (UINT64)eap_client;
  PackAddInt64(p, "release_me_eap_client", ptr);

  AddRef(eap_client->Ref);
 }


 b = NewBuf();
 WriteBuf(b, client_ip, sizeof(IP));
 WriteBufStr(b, client_name);
 WriteBufStr(b, crypt_name);

 Sha1(unique, b->Buf, b->Size);

 FreeBuf(b);

 PackAddData(p, "unique_id", unique, SHA1_SIZE);

 PackAddStr(p, "inproc_postfix", postfix);
 PackAddStr(p, "inproc_cryptname", crypt_name);
 PackAddInt(p, "inproc_layer", ipc->Layer);


 Zero(&info, sizeof(info));
 StrCpy(info.ClientProductName, sizeof(info.ClientProductName), client_name);
 info.ClientProductVer = Endian32(cedar->Version);
 info.ClientProductBuild = Endian32(cedar->Build);
 StrCpy(info.ServerProductName, sizeof(info.ServerProductName), server_str);
 info.ServerProductVer = Endian32(server_ver);
 info.ServerProductBuild = Endian32(server_build);
 StrCpy(info.ClientOsName, sizeof(info.ClientOsName), client_name);
 StrCpy(info.ClientOsVer, sizeof(info.ClientOsVer), "-");
 StrCpy(info.ClientOsProductId, sizeof(info.ClientOsProductId), "-");
 info.ClientIpAddress = IPToUINT(&s->LocalIP);
 info.ClientPort = Endian32(s->LocalPort);
 StrCpy(info.ClientHostname, sizeof(info.ClientHostname), ipc->ClientHostname);
 IPToStr(info.ServerHostname, sizeof(info.ServerHostname), &s->RemoteIP);
 info.ServerIpAddress = IPToUINT(&s->RemoteIP);
 info.ServerPort = Endian32(s->RemotePort);
 StrCpy(info.HubName, sizeof(info.HubName), hubname);
 Copy(info.UniqueId, unique, 16);
 if (IsIP6(&s->LocalIP))
 {
  Copy(info.ClientIpAddress6, s->LocalIP.ipv6_addr, 16);
 }
 if (IsIP6(&s->RemoteIP))
 {
  Copy(info.ServerIpAddress6, s->RemoteIP.ipv6_addr, 16);
 }
 OutRpcNodeInfo(p, &info);

 if (HttpClientSend(s, p) == 0)
 {
  FreePack(p);
  err = ERR_DISCONNECTED;
  goto LABEL_ERROR;
 }

 FreePack(p);


 p = HttpClientRecv(s);
 if (p == ((void*)0))
 {
  err = ERR_DISCONNECTED;
  goto LABEL_ERROR;
 }

 err = GetErrorFromPack(p);
 if (err != ERR_NO_ERROR)
 {
  FreePack(p);
  goto LABEL_ERROR;
 }

 if (ParseWelcomeFromPack(p, ipc->SessionName, sizeof(ipc->SessionName),
  ipc->ConnectionName, sizeof(ipc->ConnectionName), &ipc->Policy) == 0)
 {
  err = ERR_PROTOCOL_ERROR;
  FreePack(p);
  goto LABEL_ERROR;
 }

 if (PackGetData2(p, "IpcMacAddress", ipc->MacAddress, 6) == 0 || IsZero(ipc->MacAddress, 6))
 {
  err = ERR_PROTOCOL_ERROR;
  FreePack(p);
  goto LABEL_ERROR;
 }

 if (PackGetData2(p, "IpcMsChapV2ServerResponse", mschap_v2_server_response_20, sizeof(mschap_v2_server_response_20)))
 {
  Copy(ipc->MsChapV2_ServerResponse, mschap_v2_server_response_20, sizeof(mschap_v2_server_response_20));
 }

 PackGetStr(p, "IpcHubName", ipc->HubName, sizeof(ipc->HubName));
 Debug("IPC Hub Name: %s\n", ipc->HubName);

 MacToStr(macstr, sizeof(macstr), ipc->MacAddress);

 Debug("IPC: Session = %s, Connection = %s, Mac = %s\n", ipc->SessionName, ipc->ConnectionName, macstr);

 FreePack(p);

 ReleaseSock(a);
 ipc->Sock = s;

 Debug("NewIPC() Succeed.\n");

 ipc->Interrupt = NewInterruptManager();


 ipc->ArpTable = NewList(IPCCmpArpTable);


 ipc->IPv4ReceivedQueue = NewQueue();

 return ipc;

LABEL_ERROR:
 Debug("NewIPC() Failed: Err = %u\n", err);
 Disconnect(s);
 ReleaseSock(s);
 ReleaseSock(a);
 FreeIPC(ipc);
 *error_code = err;
 return ((void*)0);
}
