
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * EnablePtr; } ;
struct TYPE_4__ {TYPE_3__* DynListenerIcmp; int EnableVpnOverIcmp; TYPE_3__* DynListenerDns; int EnableVpnOverDns; } ;
typedef TYPE_1__ SERVER ;


 int ApplyDynamicListener (TYPE_3__*) ;

void SiApplySpecialListenerStatus(SERVER *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 if (s->DynListenerDns != ((void*)0))
 {
  *s->DynListenerDns->EnablePtr = s->EnableVpnOverDns;
  ApplyDynamicListener(s->DynListenerDns);
 }

 if (s->DynListenerIcmp != ((void*)0))
 {
  *s->DynListenerIcmp->EnablePtr = s->EnableVpnOverIcmp;
  ApplyDynamicListener(s->DynListenerIcmp);
 }
}
