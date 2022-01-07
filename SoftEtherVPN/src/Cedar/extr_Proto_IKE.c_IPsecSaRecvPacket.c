
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_13__ {int NextIv; int * Key; int Iv; } ;
struct TYPE_12__ {scalar_t__ FlagEncrypted; } ;
struct TYPE_11__ {int IsIvExisting; TYPE_1__* IkeSa; struct TYPE_11__* PairIPsecSa; int Iv; } ;
struct TYPE_10__ {int BlockSize; int * CryptoKey; } ;
typedef TYPE_2__ IPSECSA ;
typedef int IKE_SERVER ;
typedef TYPE_3__ IKE_PACKET ;
typedef TYPE_4__ IKE_CRYPTO_PARAM ;


 int Copy (int *,int ,int ) ;
 int IPsecSaUpdateIv (TYPE_2__*,int ,int ) ;
 TYPE_3__* IkeParse (void*,scalar_t__,TYPE_4__*) ;

IKE_PACKET *IPsecSaRecvPacket(IKE_SERVER *ike, IPSECSA *sa, void *data, UINT size)
{
 IKE_PACKET *ret;

 if (ike == ((void*)0) || sa == ((void*)0) || (size != 0 && data == ((void*)0)))
 {
  return ((void*)0);
 }

 if (sa->IsIvExisting == 0 || sa->IkeSa->CryptoKey == ((void*)0))
 {
  ret = IkeParse(data, size, ((void*)0));
 }
 else
 {
  IKE_CRYPTO_PARAM cp;

  Copy(&cp.Iv, sa->Iv, sa->IkeSa->BlockSize);
  cp.Key = sa->IkeSa->CryptoKey;

  ret = IkeParse(data, size, &cp);

  if (ret->FlagEncrypted)
  {
   IPsecSaUpdateIv(sa, cp.NextIv, sa->IkeSa->BlockSize);
   IPsecSaUpdateIv(sa->PairIPsecSa, cp.NextIv, sa->IkeSa->BlockSize);
  }
 }

 return ret;
}
