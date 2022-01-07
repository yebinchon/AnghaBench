
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int t ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_12__ {int IpAddress; scalar_t__ Expire; int MacAddress; } ;
struct TYPE_11__ {int ArpTable; } ;
typedef TYPE_1__ L3IF ;
typedef TYPE_2__ L3ARPENTRY ;


 scalar_t__ ARP_ENTRY_EXPIRES ;
 int Copy (int ,int *,int) ;
 int Insert (int ,TYPE_2__*) ;
 int L3SendWaitingIp (TYPE_1__*,int *,int,TYPE_2__*) ;
 TYPE_2__* Search (int ,TYPE_2__*) ;
 scalar_t__ Tick64 () ;
 int Zero (TYPE_2__*,int) ;
 TYPE_2__* ZeroMalloc (int) ;

void L3InsertArpTable(L3IF *f, UINT ip, UCHAR *mac)
{
 L3ARPENTRY *a, t;

 if (f == ((void*)0) || ip == 0 || ip == 0xffffffff || mac == ((void*)0))
 {
  return;
 }

 Zero(&t, sizeof(t));
 t.IpAddress = ip;

 a = Search(f->ArpTable, &t);

 if (a == ((void*)0))
 {

  a = ZeroMalloc(sizeof(L3ARPENTRY));
  a->IpAddress = ip;
  Copy(a->MacAddress, mac, 6);
  Insert(f->ArpTable, a);
 }


 a->Expire = Tick64() + ARP_ENTRY_EXPIRES;


 L3SendWaitingIp(f, mac, ip, a);
}
