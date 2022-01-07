
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int crypt_name ;
typedef int UINT ;
struct TYPE_25__ {int L2TPv3; int Now; int * SockEvent; int * Interrupts; int ClientId; int VendorName; } ;
struct TYPE_24__ {int ClientId; int IsL2TPOnIPsecTunnelMode; int ServerPort; int ServerIP; int ClientPort; int ClientIP; TYPE_3__* CurrentIpSecSaRecv; } ;
struct TYPE_23__ {int CurrentEtherId; int IPsec; int Cedar; } ;
struct TYPE_22__ {int Now; int SockEvent; int * Interrupts; TYPE_8__* IkeClient; TYPE_7__* IkeServer; } ;
struct TYPE_21__ {TYPE_9__* EtherIP; TYPE_4__* Tunnel; } ;
struct TYPE_20__ {int VendorName; } ;
struct TYPE_18__ {int CryptoKeySize; TYPE_1__* Crypto; } ;
struct TYPE_19__ {TYPE_2__ TransformSetting; } ;
struct TYPE_17__ {int BlockSize; int Name; } ;
typedef TYPE_5__ L2TP_SESSION ;
typedef TYPE_6__ L2TP_SERVER ;
typedef TYPE_7__ IKE_SERVER ;
typedef TYPE_8__ IKE_CLIENT ;


 int Debug (char*,TYPE_8__*) ;
 int Format (char*,int,char*,int ,int) ;
 int IKE_MAX_BLOCK_SIZE ;
 int IPsecLog (TYPE_7__*,TYPE_8__*,int *,int *,int *,char*,int ) ;
 int MAX_SIZE ;
 TYPE_9__* NewEtherIPServer (int ,int ,TYPE_7__*,int *,int ,int *,int ,char*,int ,int ,int ,int ) ;
 int SetEtherIPServerSockEvent (TYPE_9__*,int ) ;
 int StrCpy (int ,int,int ) ;
 int Zero (char*,int) ;

void L2TPSessionManageEtherIPServer(L2TP_SERVER *l2tp, L2TP_SESSION *s)
{
 IKE_SERVER *ike;
 IKE_CLIENT *c;

 if (l2tp == ((void*)0) || s == ((void*)0))
 {
  return;
 }

 if (l2tp->IkeClient == ((void*)0) || l2tp->IkeServer == ((void*)0))
 {
  return;
 }

 ike = l2tp->IkeServer;
 c = l2tp->IkeClient;

 if (s->EtherIP == ((void*)0))
 {
  char crypt_name[MAX_SIZE];
  UINT crypt_block_size = IKE_MAX_BLOCK_SIZE;

  Zero(crypt_name, sizeof(crypt_name));

  if (c->CurrentIpSecSaRecv != ((void*)0))
  {
   Format(crypt_name, sizeof(crypt_name),
    "IPsec - %s (%u bits)",
    c->CurrentIpSecSaRecv->TransformSetting.Crypto->Name,
    c->CurrentIpSecSaRecv->TransformSetting.CryptoKeySize * 8);

   crypt_block_size = c->CurrentIpSecSaRecv->TransformSetting.Crypto->BlockSize;
  }

  s->EtherIP = NewEtherIPServer(ike->Cedar, ike->IPsec, ike,
   &c->ClientIP, c->ClientPort,
   &c->ServerIP, c->ServerPort, crypt_name,
   c->IsL2TPOnIPsecTunnelMode, crypt_block_size, c->ClientId,
   ++ike->CurrentEtherId);

  StrCpy(s->EtherIP->VendorName, sizeof(s->EtherIP->VendorName), s->Tunnel->VendorName);

  s->EtherIP->L2TPv3 = 1;

  Debug("IKE_CLIENT 0x%X: EtherIP Server Started.\n", c);

  IPsecLog(ike, c, ((void*)0), ((void*)0), ((void*)0), "LI_ETHERIP_SERVER_STARTED", ike->CurrentEtherId);
 }
 else
 {
  StrCpy(s->EtherIP->ClientId, sizeof(s->EtherIP->ClientId), c->ClientId);
 }

 if (s->EtherIP->Interrupts == ((void*)0))
 {
  s->EtherIP->Interrupts = l2tp->Interrupts;
 }

 if (s->EtherIP->SockEvent == ((void*)0))
 {
  SetEtherIPServerSockEvent(s->EtherIP, l2tp->SockEvent);
 }

 s->EtherIP->Now = l2tp->Now;
}
