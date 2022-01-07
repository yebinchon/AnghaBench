
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int p ;
typedef int id ;
struct TYPE_24__ {int IsL3Mode; int BridgeMode; int Mss; int Layer; int * ClientCertificate; int ClientHostname; int CryptName; int ServerPort; int ServerIp; int ClientPort; int ClientIp; int Password; int HubName; int UserName; int Postfix; int ClientName; } ;
struct TYPE_20__ {int * X; } ;
struct TYPE_19__ {int Password; int Username; int PeerInfo; } ;
struct TYPE_23__ {TYPE_3__ ClientCert; TYPE_2__ ClientKey; TYPE_1__* CipherEncrypt; } ;
struct TYPE_22__ {int SockEvent; int Cedar; } ;
struct TYPE_21__ {scalar_t__ Mode; int * IpcAsync; int ServerPort; int ServerIp; int ClientPort; int ClientIp; int * Ipc; } ;
struct TYPE_18__ {int IsNullCipher; int Name; } ;
typedef TYPE_4__ OPENVPN_SESSION ;
typedef TYPE_5__ OPENVPN_SERVER ;
typedef TYPE_6__ OPENVPN_CHANNEL ;
typedef int LIST ;
typedef TYPE_7__ IPC_PARAM ;
typedef int IP ;
typedef TYPE_7__ ETHERIP_ID ;


 int Copy (int *,int *,int) ;
 int Debug (char*,int ) ;
 scalar_t__ EntryListHasKey (int *,char*) ;
 int EntryListStrValue (int *,char*) ;
 int FreeEntryList (int *) ;
 int FreeIPC (int *) ;
 int IPC_LAYER_2 ;
 int IPC_LAYER_3 ;
 scalar_t__ IsEmptyStr (int ) ;
 int IsIPCConnected (int *) ;
 int * NewEntryList (int ,char*,char*) ;
 int * NewIPCAsync (int ,TYPE_7__*,int ) ;
 int OPENVPN_IPC_CLIENT_NAME ;
 int OPENVPN_IPC_POSTFIX_L2 ;
 int OPENVPN_IPC_POSTFIX_L3 ;
 scalar_t__ OPENVPN_MODE_L2 ;
 scalar_t__ OPENVPN_MODE_L3 ;
 int OvsCalcTcpMss (TYPE_5__*,TYPE_4__*,TYPE_6__*) ;
 int PPPParseUsername (int ,int ,TYPE_7__*) ;
 int StrCpy (int ,int,int ) ;
 int Zero (TYPE_7__*,int) ;

void OvsBeginIPCAsyncConnectionIfEmpty(OPENVPN_SERVER *s, OPENVPN_SESSION *se, OPENVPN_CHANNEL *c)
{

 if (s == ((void*)0) || se == ((void*)0) || c == ((void*)0))
 {
  return;
 }

 if (IsIPCConnected(se->Ipc) == 0)
 {
  FreeIPC(se->Ipc);

  se->Ipc = ((void*)0);
 }

 if (se->IpcAsync == ((void*)0))
 {
  LIST *pi;
  IPC_PARAM p;
  ETHERIP_ID id;

  Zero(&p, sizeof(p));
  Zero(&id, sizeof(id));


  PPPParseUsername(s->Cedar, c->ClientKey.Username, &id);



  StrCpy(p.ClientName, sizeof(p.ClientName), OPENVPN_IPC_CLIENT_NAME);
  StrCpy(p.Postfix, sizeof(p.Postfix), (se->Mode == OPENVPN_MODE_L3 ? OPENVPN_IPC_POSTFIX_L3 : OPENVPN_IPC_POSTFIX_L2));

  StrCpy(p.UserName, sizeof(p.UserName), id.UserName);
  StrCpy(p.HubName, sizeof(p.HubName), id.HubName);
  StrCpy(p.Password, sizeof(p.Password), c->ClientKey.Password);

  Copy(&p.ClientIp, &se->ClientIp, sizeof(IP));
  p.ClientPort = se->ClientPort;

  Copy(&p.ServerIp, &se->ServerIp, sizeof(IP));
  p.ServerPort = se->ServerPort;

  if (c->CipherEncrypt->IsNullCipher == 0)
  {
   StrCpy(p.CryptName, sizeof(p.CryptName), c->CipherEncrypt->Name);
  }





  pi = NewEntryList(c->ClientKey.PeerInfo, "\n", "=\t");


  if (EntryListHasKey(pi, "UV_HOSTNAME"))
  {
   StrCpy(p.ClientHostname, sizeof(p.ClientHostname), EntryListStrValue(pi, "UV_HOSTNAME"));
  }
  else
  {
   StrCpy(p.ClientHostname, sizeof(p.ClientHostname), EntryListStrValue(pi, "IV_HWADDR"));
  }

  FreeEntryList(pi);

  if (se->Mode == OPENVPN_MODE_L3)
  {

   p.IsL3Mode = 1;
  }
  else
  {

   p.BridgeMode = 1;
  }

  if (IsEmptyStr(c->ClientKey.Username) || IsEmptyStr(c->ClientKey.Password))
  {

   if (c->ClientCert.X != ((void*)0))
   {
    p.ClientCertificate = c->ClientCert.X;
   }
  }

  p.Layer = (se->Mode == OPENVPN_MODE_L2) ? IPC_LAYER_2 : IPC_LAYER_3;


  p.Mss = OvsCalcTcpMss(s, se, c);
  Debug("MSS=%u\n", p.Mss);


  se->IpcAsync = NewIPCAsync(s->Cedar, &p, s->SockEvent);
 }
}
