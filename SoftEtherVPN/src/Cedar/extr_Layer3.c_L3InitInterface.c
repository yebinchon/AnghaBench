
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* SendQueue; void* IpWaitList; void* IpPacketQueue; void* ArpWaitTable; void* ArpTable; } ;
typedef TYPE_1__ L3IF ;


 int * CmpL3ArpEntry ;
 int * CmpL3ArpWaitTable ;
 int L3GenerateMacAddress (TYPE_1__*) ;
 void* NewList (int *) ;
 void* NewQueue () ;

void L3InitInterface(L3IF *f)
{

 if (f == ((void*)0))
 {
  return;
 }


 L3GenerateMacAddress(f);


 f->ArpTable = NewList(CmpL3ArpEntry);
 f->ArpWaitTable = NewList(CmpL3ArpWaitTable);
 f->IpPacketQueue = NewQueue();
 f->IpWaitList = NewList(((void*)0));
 f->SendQueue = NewQueue();
}
