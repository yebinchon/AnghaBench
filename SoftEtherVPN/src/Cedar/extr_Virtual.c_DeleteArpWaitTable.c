
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ArpWaitTable; } ;
typedef TYPE_1__ VH ;
typedef int UINT ;
typedef int ARP_WAIT ;


 int Delete (int ,int *) ;
 int Free (int *) ;
 int * SearchArpWaitTable (TYPE_1__*,int ) ;

void DeleteArpWaitTable(VH *v, UINT ip)
{
 ARP_WAIT *w;

 if (v == ((void*)0))
 {
  return;
 }

 w = SearchArpWaitTable(v, ip);
 if (w == ((void*)0))
 {
  return;
 }
 Delete(v->ArpWaitTable, w);

 Free(w);
}
