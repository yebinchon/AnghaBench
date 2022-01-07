
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_10__ {scalar_t__ Expire; scalar_t__ LastSentTime; int IpAddress; } ;
struct TYPE_9__ {int * ArpWaitTable; } ;
typedef int LIST ;
typedef TYPE_1__ L3IF ;
typedef TYPE_2__ L3ARPWAIT ;


 scalar_t__ ARP_REQUEST_TIMEOUT ;
 int Delete (int *,TYPE_2__*) ;
 int Free (TYPE_2__*) ;
 int Insert (int *,TYPE_2__*) ;
 int L3SendArpRequestNow (TYPE_1__*,int ) ;
 TYPE_2__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 scalar_t__ Tick64 () ;

void L3PollingArpWaitTable(L3IF *f)
{
 UINT i;
 LIST *o = ((void*)0);

 if (f == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(f->ArpWaitTable);i++)
 {
  L3ARPWAIT *w = LIST_DATA(f->ArpWaitTable, i);

  if (w->Expire <= Tick64())
  {

   if (o == ((void*)0))
   {
    o = NewListFast(((void*)0));
   }

   Insert(o, w);
  }
  else if ((w->LastSentTime + ARP_REQUEST_TIMEOUT) <= Tick64())
  {

   w->LastSentTime = Tick64();

   L3SendArpRequestNow(f, w->IpAddress);
  }
 }

 if (o != ((void*)0))
 {
  for (i = 0;i < LIST_NUM(o);i++)
  {
   L3ARPWAIT *w = LIST_DATA(o, i);

   Delete(f->ArpWaitTable, w);
   Free(w);
  }

  ReleaseList(o);
 }
}
