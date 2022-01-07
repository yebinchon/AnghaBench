
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {scalar_t__ Iv; scalar_t__ BlockSize; int IsIvExisting; } ;
typedef TYPE_1__ IKE_SA ;


 int Copy (scalar_t__,void*,int ) ;
 int MIN (scalar_t__,scalar_t__) ;
 int Zero (scalar_t__,scalar_t__) ;

void IkeSaUpdateIv(IKE_SA *sa, void *iv, UINT iv_size)
{

 if (sa == ((void*)0) || iv == ((void*)0))
 {
  return;
 }

 Copy(sa->Iv, iv, MIN(sa->BlockSize, iv_size));

 if (iv_size < sa->BlockSize)
 {
  Zero(sa->Iv + sa->BlockSize, sa->BlockSize - iv_size);
 }

 sa->IsIvExisting = 1;
}
