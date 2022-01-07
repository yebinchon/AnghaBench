
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int t ;
typedef int UINT ;
struct TYPE_10__ {int IpAddress; scalar_t__ Expire; } ;
struct TYPE_9__ {int ArpWaitTable; } ;
typedef TYPE_1__ L3IF ;
typedef TYPE_2__ L3ARPWAIT ;


 scalar_t__ ARP_REQUEST_GIVEUP ;
 int Insert (int ,TYPE_2__*) ;
 TYPE_2__* Search (int ,TYPE_2__*) ;
 scalar_t__ Tick64 () ;
 int Zero (TYPE_2__*,int) ;
 TYPE_2__* ZeroMalloc (int) ;

void L3SendArp(L3IF *f, UINT ip)
{
 L3ARPWAIT t, *w;

 if (f == ((void*)0) || ip == 0 || ip == 0xffffffff)
 {
  return;
 }


 Zero(&t, sizeof(t));
 t.IpAddress = ip;
 w = Search(f->ArpWaitTable, &t);

 if (w != ((void*)0))
 {

  return;
 }
 else
 {

  w = ZeroMalloc(sizeof(L3ARPWAIT));
  w->Expire = Tick64() + ARP_REQUEST_GIVEUP;
  w->IpAddress = ip;
  Insert(f->ArpWaitTable, w);
 }
}
