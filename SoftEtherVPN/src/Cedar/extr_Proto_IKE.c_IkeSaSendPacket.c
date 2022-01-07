
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
struct TYPE_22__ {int Size; int Buf; } ;
struct TYPE_21__ {int NextIv; int Key; int Iv; } ;
struct TYPE_20__ {int FlagEncrypted; scalar_t__ ExchangeType; } ;
struct TYPE_19__ {TYPE_1__* IkeClient; scalar_t__ NextSendTick; int * SendBuffer; int BlockSize; int CryptoKey; int Iv; } ;
struct TYPE_18__ {int Interrupts; scalar_t__ Now; } ;
struct TYPE_17__ {int ClientPort; int ClientIP; int ServerPort; int ServerIP; } ;
typedef TYPE_2__ IKE_SERVER ;
typedef TYPE_3__ IKE_SA ;
typedef TYPE_4__ IKE_PACKET ;
typedef TYPE_5__ IKE_CRYPTO_PARAM ;
typedef TYPE_6__ BUF ;


 int AddInterrupt (int ,scalar_t__) ;
 int * CloneBuf (TYPE_6__*) ;
 int Copy (int ,int ,int ) ;
 int Free (TYPE_6__*) ;
 int FreeBuf (int *) ;
 scalar_t__ IKE_EXCHANGE_TYPE_INFORMATION ;
 scalar_t__ IKE_SA_RESEND_INTERVAL ;
 int IKE_UDP_TYPE_ISAKMP ;
 TYPE_6__* IkeBuild (TYPE_4__*,TYPE_5__*) ;
 int IkeSaUpdateIv (TYPE_3__*,int ,int ) ;
 int IkeSendUdpPacket (TYPE_2__*,int ,int *,int ,int *,int ,int ,int ) ;

void IkeSaSendPacket(IKE_SERVER *ike, IKE_SA *sa, IKE_PACKET *p)
{
 BUF *buf;

 if (ike == ((void*)0) || sa == ((void*)0))
 {
  return;
 }

 if (p == ((void*)0))
 {
  FreeBuf(sa->SendBuffer);
  sa->SendBuffer = ((void*)0);
  sa->NextSendTick = 0;
  return;
 }


 if (p->FlagEncrypted == 0)
 {
  buf = IkeBuild(p, ((void*)0));
 }
 else
 {
  IKE_CRYPTO_PARAM cp;

  Copy(cp.Iv, sa->Iv, sa->BlockSize);
  cp.Key = sa->CryptoKey;

  buf = IkeBuild(p, &cp);

  IkeSaUpdateIv(sa, cp.NextIv, sa->BlockSize);
 }

 if (buf == ((void*)0))
 {
  return;
 }

 if (p->ExchangeType != IKE_EXCHANGE_TYPE_INFORMATION)
 {

  if (sa->SendBuffer != ((void*)0))
  {
   FreeBuf(sa->SendBuffer);
  }

  sa->SendBuffer = CloneBuf(buf);
  sa->NextSendTick = ike->Now + (UINT64)(IKE_SA_RESEND_INTERVAL);
  AddInterrupt(ike->Interrupts, sa->NextSendTick);
 }

 IkeSendUdpPacket(ike, IKE_UDP_TYPE_ISAKMP, &sa->IkeClient->ServerIP, sa->IkeClient->ServerPort,
  &sa->IkeClient->ClientIP, sa->IkeClient->ClientPort,
  buf->Buf, buf->Size);

 Free(buf);
}
