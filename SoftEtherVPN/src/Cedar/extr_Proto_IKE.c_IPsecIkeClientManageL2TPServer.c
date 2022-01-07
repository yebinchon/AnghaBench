
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


typedef int UINT ;
struct TYPE_20__ {TYPE_4__* L2TP; TYPE_3__* CurrentIpSecSaRecv; int ClientIP; int L2TPClientIP; int ServerIP; int L2TPServerIP; } ;
struct TYPE_19__ {int Now; int SockEvent; int * Interrupts; int Cedar; } ;
struct TYPE_18__ {int Now; int * SockEvent; int * Interrupts; int CryptName; TYPE_6__* IkeClient; } ;
struct TYPE_16__ {int CryptoKeySize; TYPE_1__* Crypto; } ;
struct TYPE_17__ {TYPE_2__ TransformSetting; } ;
struct TYPE_15__ {int Name; int BlockSize; } ;
typedef TYPE_4__ L2TP_SERVER ;
typedef int IP ;
typedef TYPE_5__ IKE_SERVER ;
typedef TYPE_6__ IKE_CLIENT ;


 int Copy (int *,int *,int) ;
 int Debug (char*,TYPE_6__*) ;
 int Format (int ,int,char*,int ,int) ;
 int IKE_MAX_BLOCK_SIZE ;
 int IPsecLog (TYPE_5__*,TYPE_6__*,int *,int *,char*) ;
 int IsIP6 (int *) ;
 TYPE_4__* NewL2TPServerEx (int ,TYPE_5__*,int ,int ) ;
 int SetL2TPServerSockEvent (TYPE_4__*,int ) ;

void IPsecIkeClientManageL2TPServer(IKE_SERVER *ike, IKE_CLIENT *c)
{
 L2TP_SERVER *l2tp;

 if (ike == ((void*)0) || c == ((void*)0))
 {
  return;
 }

 if (c->L2TP == ((void*)0))
 {
  UINT crypt_block_size = IKE_MAX_BLOCK_SIZE;

  if (c->CurrentIpSecSaRecv != ((void*)0))
  {
   crypt_block_size = c->CurrentIpSecSaRecv->TransformSetting.Crypto->BlockSize;
  }

  c->L2TP = NewL2TPServerEx(ike->Cedar, ike, IsIP6(&c->ClientIP), crypt_block_size);
  c->L2TP->IkeClient = c;

  Copy(&c->L2TPServerIP, &c->ServerIP, sizeof(IP));
  Copy(&c->L2TPClientIP, &c->ClientIP, sizeof(IP));

  if (c->CurrentIpSecSaRecv != ((void*)0))
  {
   Format(c->L2TP->CryptName, sizeof(c->L2TP->CryptName),
    "IPsec - %s (%u bits)",
    c->CurrentIpSecSaRecv->TransformSetting.Crypto->Name,
    c->CurrentIpSecSaRecv->TransformSetting.CryptoKeySize * 8);
  }

  Debug("IKE_CLIENT 0x%X: L2TP Server Started.\n", c);

  IPsecLog(ike, c, ((void*)0), ((void*)0), "LI_L2TP_SERVER_STARTED");
 }

 l2tp = c->L2TP;

 if (l2tp->Interrupts == ((void*)0))
 {
  l2tp->Interrupts = ike->Interrupts;
 }

 if (l2tp->SockEvent == ((void*)0))
 {
  SetL2TPServerSockEvent(l2tp, ike->SockEvent);
 }

 l2tp->Now = ike->Now;
}
