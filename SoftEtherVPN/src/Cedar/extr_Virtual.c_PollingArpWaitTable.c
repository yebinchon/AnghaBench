
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int Now; int * ArpWaitTable; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int GiveupTime; scalar_t__ TimeoutTime; int IpAddress; scalar_t__ NextTimeoutTimeValue; } ;
typedef int LIST ;
typedef TYPE_2__ ARP_WAIT ;


 scalar_t__ ARP_REQUEST_TIMEOUT ;
 int Add (int *,TYPE_2__*) ;
 int DeleteArpWaitTable (TYPE_1__*,int ) ;
 TYPE_2__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 int VirtualArpSendRequest (TYPE_1__*,int ) ;

void PollingArpWaitTable(VH *v)
{
 UINT i;
 LIST *o;

 if (v == ((void*)0))
 {
  return;
 }


 o = ((void*)0);


 for (i = 0;i < LIST_NUM(v->ArpWaitTable);i++)
 {
  ARP_WAIT *w = LIST_DATA(v->ArpWaitTable, i);

  if (w->GiveupTime < v->Now || (w->GiveupTime - 100 * 1000) > v->Now)
  {

   if (o == ((void*)0))
   {
    o = NewListFast(((void*)0));
   }
   Add(o, w);
  }
  else
  {
   if (w->TimeoutTime < v->Now)
   {

    VirtualArpSendRequest(v, w->IpAddress);


    w->TimeoutTime = v->Now + (UINT64)w->NextTimeoutTimeValue;

    w->NextTimeoutTimeValue = w->NextTimeoutTimeValue + ARP_REQUEST_TIMEOUT;
   }
  }
 }


 if (o != ((void*)0))
 {
  for (i = 0;i < LIST_NUM(o);i++)
  {
   ARP_WAIT *w = LIST_DATA(o, i);

   DeleteArpWaitTable(v, w->IpAddress);
  }
  ReleaseList(o);
 }
}
