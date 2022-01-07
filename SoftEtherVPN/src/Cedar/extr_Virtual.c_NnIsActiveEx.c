
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* NativeNat; } ;
typedef TYPE_2__ VH ;
struct TYPE_4__ {scalar_t__ PublicIP; int Active; int IsRawIpMode; } ;



bool NnIsActiveEx(VH *v, bool *is_ipraw_mode)
{

 if (v == ((void*)0))
 {
  return 0;
 }

 if (v->NativeNat == ((void*)0))
 {
  return 0;
 }

 if (v->NativeNat->PublicIP == 0)
 {
  return 0;
 }

 if (v->NativeNat->Active)
 {
  if (is_ipraw_mode != ((void*)0))
  {
   *is_ipraw_mode = v->NativeNat->IsRawIpMode;
  }
 }

 return v->NativeNat->Active;
}
