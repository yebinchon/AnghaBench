
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int crypt_name ;
typedef int UINT ;
struct TYPE_20__ {int Now; int * SockEvent; int * Interrupts; int ClientId; } ;
struct TYPE_19__ {TYPE_6__* EtherIP; int ClientId; int IsEtherIPOnIPsecTunnelMode; int ServerPort; int ServerIP; int ClientPort; int ClientIP; TYPE_3__* CurrentIpSecSaRecv; } ;
struct TYPE_18__ {int Now; int SockEvent; int * Interrupts; int CurrentEtherId; int IPsec; int Cedar; } ;
struct TYPE_16__ {int CryptoKeySize; TYPE_1__* Crypto; } ;
struct TYPE_17__ {TYPE_2__ TransformSetting; } ;
struct TYPE_15__ {int BlockSize; int Name; } ;
typedef TYPE_4__ IKE_SERVER ;
typedef TYPE_5__ IKE_CLIENT ;
typedef TYPE_6__ ETHERIP_SERVER ;


 int Debug (char*,TYPE_5__*) ;
 int Format (char*,int,char*,int ,int) ;
 int IKE_MAX_BLOCK_SIZE ;
 int IPsecLog (TYPE_4__*,TYPE_5__*,int *,int *,int *,char*,int ) ;
 int MAX_SIZE ;
 TYPE_6__* NewEtherIPServer (int ,int ,TYPE_4__*,int *,int ,int *,int ,char*,int ,int ,int ,int ) ;
 int SetEtherIPServerSockEvent (TYPE_6__*,int ) ;
 int StrCpy (int ,int,int ) ;
 int Zero (char*,int) ;

void IPsecIkeClientManageEtherIPServer(IKE_SERVER *ike, IKE_CLIENT *c)
{
 ETHERIP_SERVER *s;

 if (ike == ((void*)0) || c == ((void*)0))
 {
  return;
 }

 if (c->EtherIP == ((void*)0))
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

  c->EtherIP = NewEtherIPServer(ike->Cedar, ike->IPsec, ike,
   &c->ClientIP, c->ClientPort,
   &c->ServerIP, c->ServerPort, crypt_name,
   c->IsEtherIPOnIPsecTunnelMode, crypt_block_size, c->ClientId,
   ++ike->CurrentEtherId);

  Debug("IKE_CLIENT 0x%X: EtherIP Server Started.\n", c);

  IPsecLog(ike, c, ((void*)0), ((void*)0), ((void*)0), "LI_ETHERIP_SERVER_STARTED", ike->CurrentEtherId);
 }
 else
 {
  StrCpy(c->EtherIP->ClientId, sizeof(c->EtherIP->ClientId), c->ClientId);
 }

 s = c->EtherIP;

 if (s->Interrupts == ((void*)0))
 {
  s->Interrupts = ike->Interrupts;
 }

 if (s->SockEvent == ((void*)0))
 {
  SetEtherIPServerSockEvent(s, ike->SockEvent);
 }

 s->Now = ike->Now;
}
