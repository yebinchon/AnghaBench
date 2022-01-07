
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_11__ {int NextIv; int * Key; int Iv; } ;
struct TYPE_10__ {scalar_t__ FlagEncrypted; } ;
struct TYPE_9__ {int IsIvExisting; int BlockSize; int * CryptoKey; int Iv; } ;
typedef int IKE_SERVER ;
typedef TYPE_1__ IKE_SA ;
typedef TYPE_2__ IKE_PACKET ;
typedef TYPE_3__ IKE_CRYPTO_PARAM ;


 int Copy (int *,int ,int ) ;
 TYPE_2__* IkeParse (void*,scalar_t__,TYPE_3__*) ;
 int IkeSaUpdateIv (TYPE_1__*,int ,int ) ;

IKE_PACKET *IkeSaRecvPacket(IKE_SERVER *ike, IKE_SA *sa, void *data, UINT size)
{
 IKE_PACKET *ret;

 if (ike == ((void*)0) || sa == ((void*)0) || (size != 0 && data == ((void*)0)))
 {
  return ((void*)0);
 }

 if (sa->IsIvExisting == 0 || sa->CryptoKey == ((void*)0))
 {
  ret = IkeParse(data, size, ((void*)0));
 }
 else
 {
  IKE_CRYPTO_PARAM cp;

  Copy(&cp.Iv, sa->Iv, sa->BlockSize);
  cp.Key = sa->CryptoKey;

  ret = IkeParse(data, size, &cp);

  if (ret->FlagEncrypted)
  {
   IkeSaUpdateIv(sa, cp.NextIv, sa->BlockSize);
  }
 }

 return ret;
}
