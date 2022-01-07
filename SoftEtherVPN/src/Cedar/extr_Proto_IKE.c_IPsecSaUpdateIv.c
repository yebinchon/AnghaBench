
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ Iv; int IsIvExisting; TYPE_1__* IkeSa; } ;
struct TYPE_4__ {scalar_t__ BlockSize; } ;
typedef TYPE_2__ IPSECSA ;


 int Copy (scalar_t__,void*,int ) ;
 int MIN (scalar_t__,scalar_t__) ;
 int Zero (scalar_t__,scalar_t__) ;

void IPsecSaUpdateIv(IPSECSA *sa, void *iv, UINT iv_size)
{

 if (sa == ((void*)0) || iv == ((void*)0))
 {
  return;
 }

 Copy(sa->Iv, iv, MIN(sa->IkeSa->BlockSize, iv_size));

 if (iv_size < sa->IkeSa->BlockSize)
 {
  Zero(sa->Iv + sa->IkeSa->BlockSize, sa->IkeSa->BlockSize - iv_size);
 }

 sa->IsIvExisting = 1;
}
