
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int * IpWaitTable; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_11__ {scalar_t__ DestIP; struct TYPE_11__* Data; int Size; } ;
typedef int LIST ;
typedef TYPE_2__ IP_WAIT ;


 int Add (int *,TYPE_2__*) ;
 int Delete (int *,TYPE_2__*) ;
 int Free (TYPE_2__*) ;
 TYPE_2__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 int VirtualIpSend (TYPE_1__*,int *,TYPE_2__*,int ) ;

void SendWaitingIp(VH *v, UCHAR *mac, UINT dest_ip)
{
 UINT i;
 LIST *o = ((void*)0);

 if (v == ((void*)0) || mac == ((void*)0))
 {
  return;
 }


 for (i = 0;i < LIST_NUM(v->IpWaitTable);i++)
 {
  IP_WAIT *w = LIST_DATA(v->IpWaitTable, i);

  if (w->DestIP == dest_ip)
  {
   if (o == ((void*)0))
   {
    o = NewListFast(((void*)0));
   }
   Add(o, w);
  }
 }


 if (o != ((void*)0))
 {
  for (i = 0;i < LIST_NUM(o);i++)
  {
   IP_WAIT *w = LIST_DATA(o, i);


   VirtualIpSend(v, mac, w->Data, w->Size);


   Delete(v->IpWaitTable, w);


   Free(w->Data);
   Free(w);
  }

  ReleaseList(o);
 }
}
