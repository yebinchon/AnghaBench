
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ TypeL3; } ;
typedef TYPE_1__ PKT ;
typedef int NATIVE_NAT ;


 scalar_t__ L3_IPV4 ;
 int NnFragmentedIpReceived (int *,TYPE_1__*) ;

void NnLayer2(NATIVE_NAT *t, PKT *packet)
{

 if (t == ((void*)0) || packet == ((void*)0))
 {
  return;
 }

 if (packet->TypeL3 == L3_IPV4)
 {

  NnFragmentedIpReceived(t, packet);
 }
}
