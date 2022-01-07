
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {int ** IkeCryptos; int ** EspCryptos; } ;
typedef TYPE_1__ IKE_ENGINE ;
typedef int IKE_CRYPTO ;


 size_t MAX_IKE_ENGINE_ELEMENTS ;

IKE_CRYPTO *GetIkeCrypto(IKE_ENGINE *e, bool for_esp, UINT i)
{

 if (e == ((void*)0) || i == 0 || i >= MAX_IKE_ENGINE_ELEMENTS)
 {
  return ((void*)0);
 }

 if (for_esp)
 {
  return e->EspCryptos[i];
 }
 else
 {
  return e->IkeCryptos[i];
 }
}
