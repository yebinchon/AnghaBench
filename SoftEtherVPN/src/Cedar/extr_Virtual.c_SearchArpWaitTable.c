
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ArpWaitTable; } ;
typedef TYPE_1__ VH ;
typedef int UINT ;
struct TYPE_8__ {int IpAddress; } ;
typedef TYPE_2__ ARP_WAIT ;


 TYPE_2__* Search (int ,TYPE_2__*) ;

ARP_WAIT *SearchArpWaitTable(VH *v, UINT ip)
{
 ARP_WAIT *w, t;

 if (v == ((void*)0))
 {
  return ((void*)0);
 }

 t.IpAddress = ip;
 w = Search(v->ArpWaitTable, &t);

 return w;
}
