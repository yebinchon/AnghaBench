
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {int ** IkeDhs; int ** EspDhs; } ;
typedef TYPE_1__ IKE_ENGINE ;
typedef int IKE_DH ;


 size_t MAX_IKE_ENGINE_ELEMENTS ;

IKE_DH *GetIkeDh(IKE_ENGINE *e, bool for_esp, UINT i)
{

 if (e == ((void*)0) || i == 0 || i >= MAX_IKE_ENGINE_ELEMENTS)
 {
  return ((void*)0);
 }

 if (for_esp)
 {
  return e->EspDhs[i];
 }
 else
 {
  return e->IkeDhs[i];
 }
}
