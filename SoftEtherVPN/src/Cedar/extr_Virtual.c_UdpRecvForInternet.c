
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_10__ {int SockEvent; } ;
typedef TYPE_1__ VH ;
typedef int UINT ;
struct TYPE_11__ {int ProxyDns; int UdpSendQueue; int DestIpProxy; } ;
typedef TYPE_2__ NAT_ENTRY ;
typedef int IP ;
typedef int BLOCK ;


 int Copy (void*,void*,int ) ;
 TYPE_2__* CreateNatUdp (TYPE_1__*,int ,int ,int ,int ,int ) ;
 int Debug (char*,...) ;
 int GetDefaultDns (int *) ;
 int IPToStr (char*,int,int *) ;
 int IPToUINT (int *) ;
 int InsertQueue (int ,int *) ;
 int MAX_SIZE ;
 void* Malloc (int ) ;
 int NAT_UDP ;
 int * NewBlock (void*,int ,int ) ;
 TYPE_2__* SearchNat (TYPE_1__*,TYPE_2__*) ;
 int SetNat (TYPE_2__*,int ,int ,int ,int ,int ,int ,int ) ;
 int SetSockEvent (int ) ;

void UdpRecvForInternet(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port, void *data, UINT size, bool dns_proxy)
{
 NAT_ENTRY *n, t;
 BLOCK *block;
 void *buf;
 UINT dns_ip = 0;

 if (data == ((void*)0) || v == ((void*)0))
 {
  return;
 }

 if (dns_proxy)
 {

  IP ip;
  char tmp[MAX_SIZE];
  if (GetDefaultDns(&ip) == 0)
  {

   Debug("Failed to GetDefaultDns()\n");
   return;
  }
  dns_ip = IPToUINT(&ip);
  IPToStr(tmp, sizeof(tmp), &ip);
  Debug("Redirect to DNS Server %s\n", tmp);
 }


 SetNat(&t, NAT_UDP, src_ip, src_port, dest_ip, dest_port, 0, 0);
 n = SearchNat(v, &t);

 if (n == ((void*)0))
 {

  n = CreateNatUdp(v, src_ip, src_port, dest_ip, dest_port, dns_proxy ? dns_ip : 0);
  if (n == ((void*)0))
  {

   return;
  }

  if (dns_proxy)
  {
   n->ProxyDns = 1;
   n->DestIpProxy = dns_ip;
  }
 }


 buf = Malloc(size);
 Copy(buf, data, size);
 block = NewBlock(buf, size, 0);
 InsertQueue(n->UdpSendQueue, block);

 SetSockEvent(v->SockEvent);
}
