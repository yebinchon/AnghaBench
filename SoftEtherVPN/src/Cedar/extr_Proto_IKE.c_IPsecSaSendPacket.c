
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


typedef scalar_t__ UINT64 ;
struct TYPE_24__ {int Size; int Buf; } ;
struct TYPE_23__ {int NextIv; int Key; int Iv; } ;
struct TYPE_22__ {int FlagEncrypted; } ;
struct TYPE_21__ {int Interrupts; scalar_t__ Now; } ;
struct TYPE_20__ {TYPE_2__* IkeClient; scalar_t__ NextSendTick; int * SendBuffer; TYPE_1__* IkeSa; struct TYPE_20__* PairIPsecSa; int Iv; } ;
struct TYPE_19__ {int ClientPort; int ClientIP; int ServerPort; int ServerIP; } ;
struct TYPE_18__ {int BlockSize; int CryptoKey; } ;
typedef TYPE_3__ IPSECSA ;
typedef TYPE_4__ IKE_SERVER ;
typedef TYPE_5__ IKE_PACKET ;
typedef TYPE_6__ IKE_CRYPTO_PARAM ;
typedef TYPE_7__ BUF ;


 int AddInterrupt (int ,scalar_t__) ;
 int * CloneBuf (TYPE_7__*) ;
 int Copy (int ,int ,int ) ;
 int Free (TYPE_7__*) ;
 int FreeBuf (int *) ;
 scalar_t__ IKE_SA_RESEND_INTERVAL ;
 int IKE_UDP_TYPE_ISAKMP ;
 int IPsecSaUpdateIv (TYPE_3__*,int ,int ) ;
 TYPE_7__* IkeBuild (TYPE_5__*,TYPE_6__*) ;
 int IkeSendUdpPacket (TYPE_4__*,int ,int *,int ,int *,int ,int ,int ) ;

void IPsecSaSendPacket(IKE_SERVER *ike, IPSECSA *sa, IKE_PACKET *p)
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

  Copy(cp.Iv, sa->Iv, sa->IkeSa->BlockSize);
  cp.Key = sa->IkeSa->CryptoKey;

  buf = IkeBuild(p, &cp);

  IPsecSaUpdateIv(sa, cp.NextIv, sa->IkeSa->BlockSize);
  IPsecSaUpdateIv(sa->PairIPsecSa, cp.NextIv, sa->IkeSa->BlockSize);
 }

 if (buf == ((void*)0))
 {
  return;
 }


 if (sa->SendBuffer != ((void*)0))
 {
  FreeBuf(sa->SendBuffer);
 }

 sa->SendBuffer = CloneBuf(buf);
 sa->NextSendTick = ike->Now + (UINT64)(IKE_SA_RESEND_INTERVAL);
 AddInterrupt(ike->Interrupts, sa->NextSendTick);

 IkeSendUdpPacket(ike, IKE_UDP_TYPE_ISAKMP, &sa->IkeClient->ServerIP, sa->IkeClient->ServerPort,
  &sa->IkeClient->ClientIP, sa->IkeClient->ClientPort,
  buf->Buf, buf->Size);

 Free(buf);
}
