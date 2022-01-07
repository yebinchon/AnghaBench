
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_10__ {int * DynListenerDns; int * DynListenerIcmp; int * ServerListenerList; } ;
struct TYPE_9__ {int Port; } ;
typedef TYPE_1__ SERVER_LISTENER ;
typedef TYPE_2__ SERVER ;
typedef int LIST ;


 int Add (int *,TYPE_1__*) ;
 int FreeDynamicListener (int *) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 int SiDeleteListener (TYPE_2__*,int ) ;
 int SiLockListenerList (TYPE_2__*) ;
 int SiUnlockListenerList (TYPE_2__*) ;

void SiStopAllListener(SERVER *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 SiLockListenerList(s);
 {
  UINT i;
  LIST *o = NewListFast(((void*)0));
  for (i = 0;i < LIST_NUM(s->ServerListenerList);i++)
  {
   SERVER_LISTENER *e = LIST_DATA(s->ServerListenerList, i);
   Add(o, e);
  }

  for (i = 0;i < LIST_NUM(o);i++)
  {
   SERVER_LISTENER *e = LIST_DATA(o, i);
   SiDeleteListener(s, e->Port);
  }

  ReleaseList(o);
 }
 SiUnlockListenerList(s);

 ReleaseList(s->ServerListenerList);


 FreeDynamicListener(s->DynListenerIcmp);
 s->DynListenerIcmp = ((void*)0);


 FreeDynamicListener(s->DynListenerDns);
 s->DynListenerDns = ((void*)0);
}
