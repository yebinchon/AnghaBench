
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ Now; int * IpWaitTable; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ Expire; struct TYPE_9__* Data; } ;
typedef int LIST ;
typedef TYPE_2__ IP_WAIT ;


 int Add (int *,TYPE_2__*) ;
 int Delete (int *,TYPE_2__*) ;
 int Free (TYPE_2__*) ;
 TYPE_2__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;

void DeleteOldIpWaitTable(VH *v)
{
 UINT i;
 LIST *o = ((void*)0);

 if (v == ((void*)0))
 {
  return;
 }


 for (i = 0;i < LIST_NUM(v->IpWaitTable);i++)
 {
  IP_WAIT *w = LIST_DATA(v->IpWaitTable, i);

  if (w->Expire < v->Now)
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


   Delete(v->IpWaitTable, w);


   Free(w->Data);
   Free(w);
  }
  ReleaseList(o);
 }
}
