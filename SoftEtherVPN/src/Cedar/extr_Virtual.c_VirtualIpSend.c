
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int MacAddress; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;


 int MAC_PROTO_IPV4 ;
 int VirtualLayer2Send (TYPE_1__*,int *,int ,int ,void*,scalar_t__) ;

void VirtualIpSend(VH *v, UCHAR *dest_mac, void *data, UINT size)
{

 if (v == ((void*)0) || dest_mac == ((void*)0) || data == ((void*)0) || size == 0)
 {
  return;
 }


 VirtualLayer2Send(v, dest_mac, v->MacAddress, MAC_PROTO_IPV4, data, size);
}
