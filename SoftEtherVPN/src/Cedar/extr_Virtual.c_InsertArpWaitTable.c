
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ArpWaitTable; } ;
typedef TYPE_1__ VH ;
typedef int ARP_WAIT ;


 int Add (int ,int *) ;

void InsertArpWaitTable(VH *v, ARP_WAIT *w)
{

 if (v == ((void*)0) || w == ((void*)0))
 {
  return;
 }

 Add(v->ArpWaitTable, w);
}
