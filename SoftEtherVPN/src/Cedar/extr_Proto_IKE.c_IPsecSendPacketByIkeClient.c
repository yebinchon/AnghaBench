
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_3__ {int * CurrentIpSecSaSend; } ;
typedef int IKE_SERVER ;
typedef TYPE_1__ IKE_CLIENT ;


 int IPsecSendPacketByIPsecSa (int *,int *,int *,scalar_t__,int ) ;

void IPsecSendPacketByIkeClient(IKE_SERVER *ike, IKE_CLIENT *c, UCHAR *data, UINT data_size, UCHAR protocol_id)
{

 if (ike == ((void*)0) || c == ((void*)0) || data == ((void*)0) || data_size == 0)
 {
  return;
 }

 if (c->CurrentIpSecSaSend == ((void*)0))
 {
  return;
 }

 IPsecSendPacketByIPsecSa(ike, c->CurrentIpSecSaSend, data, data_size, protocol_id);
}
