
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_19__ {int* addr; } ;
struct TYPE_20__ {TYPE_2__ Gateway; } ;
struct TYPE_18__ {TYPE_2__ BroadcastAddress; TYPE_2__ DefaultGateway; int ClasslessRoute; int SubnetMask; TYPE_2__ ClientIPAddress; } ;
typedef TYPE_1__ IPC ;
typedef TYPE_2__ IP ;
typedef TYPE_3__ DHCP_CLASSLESS_ROUTE ;


 scalar_t__ CmpIpAddr (TYPE_2__*,TYPE_2__*) ;
 int Copy (TYPE_2__*,TYPE_2__*,int) ;
 TYPE_3__* GetBestClasslessRoute (int *,TYPE_2__*) ;
 int IPCSendIPv4Unicast (TYPE_1__*,void*,int,TYPE_2__*) ;
 int IPCSendIPv4WithDestMacAddr (TYPE_1__*,void*,int,int*) ;
 int IsInSameNetwork4 (TYPE_2__*,TYPE_2__*,int *) ;
 scalar_t__ IsZeroIP (TYPE_2__*) ;
 int UINTToIP (TYPE_2__*,int) ;

void IPCSendIPv4(IPC *ipc, void *data, UINT size)
{
 IP ip_src, ip_dst;
 IP ip_dst_local;
 bool is_broadcast = 0;
 UCHAR uc;
 DHCP_CLASSLESS_ROUTE *r = ((void*)0);

 if (ipc == ((void*)0) || data == ((void*)0) || size < 20 || size > 1500)
 {
  return;
 }

 uc = ((UCHAR *)data)[0];
 if (((uc >> 4) & 0x0f) != 4)
 {

  return;
 }


 UINTToIP(&ip_src, *((UINT *)(((UCHAR *)data) + 12)));
 UINTToIP(&ip_dst, *((UINT *)(((UCHAR *)data) + 16)));


 if (CmpIpAddr(&ip_src, &ipc->ClientIPAddress) != 0)
 {

  return;
 }

 if (IsZeroIP(&ip_dst))
 {

  return;
 }

 if (CmpIpAddr(&ip_dst, &ipc->ClientIPAddress) == 0)
 {

  return;
 }


 Copy(&ip_dst_local, &ip_dst, sizeof(IP));

 if (IsInSameNetwork4(&ip_dst, &ipc->ClientIPAddress, &ipc->SubnetMask) == 0)
 {
  r = GetBestClasslessRoute(&ipc->ClasslessRoute, &ip_dst);

  if (r == ((void*)0))
  {
   Copy(&ip_dst_local, &ipc->DefaultGateway, sizeof(IP));
  }
  else
  {
   Copy(&ip_dst_local, &r->Gateway, sizeof(IP));
  }
 }

 if (CmpIpAddr(&ipc->BroadcastAddress, &ip_dst) == 0)
 {

  is_broadcast = 1;
 }

 if (ip_dst.addr[0] == 255 && ip_dst.addr[1] == 255 && ip_dst.addr[2] == 255 && ip_dst.addr[3] == 255)
 {

  is_broadcast = 1;
 }

 if (ip_dst.addr[0] >= 224 && ip_dst.addr[0] <= 239)
 {

  is_broadcast = 1;
 }

 if (is_broadcast)
 {

  UCHAR dest[6];
  UINT i;


  for (i = 0;i < 6;i++)
  {
   dest[i] = 0xff;
  }


  IPCSendIPv4WithDestMacAddr(ipc, data, size, dest);

  return;
 }

 if (IsZeroIP(&ip_dst_local))
 {

  return;
 }


 IPCSendIPv4Unicast(ipc, data, size, &ip_dst_local);
}
