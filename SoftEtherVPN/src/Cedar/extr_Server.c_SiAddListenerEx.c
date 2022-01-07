
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_10__ {int DisableDos; } ;
struct TYPE_9__ {int ServerListenerList; int Cedar; } ;
struct TYPE_8__ {scalar_t__ Port; int Enabled; int DisableDos; TYPE_5__* Listener; } ;
typedef TYPE_1__ SERVER_LISTENER ;
typedef TYPE_2__ SERVER ;


 int Insert (int ,TYPE_1__*) ;
 int LISTENER_TCP ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 TYPE_5__* NewListener (int ,int ,scalar_t__) ;
 TYPE_1__* ZeroMalloc (int) ;

bool SiAddListenerEx(SERVER *s, UINT port, bool enabled, bool disable_dos)
{
 SERVER_LISTENER *e;
 UINT i;

 if (s == ((void*)0) || port == 0)
 {
  return 0;
 }


 for (i = 0;i < LIST_NUM(s->ServerListenerList);i++)
 {
  e = LIST_DATA(s->ServerListenerList, i);
  if (e->Port == port)
  {

   return 0;
  }
 }


 e = ZeroMalloc(sizeof(SERVER_LISTENER));
 e->Enabled = enabled;
 e->Port = port;
 e->DisableDos = disable_dos;

 if (e->Enabled)
 {

  e->Listener = NewListener(s->Cedar, LISTENER_TCP, e->Port);
  if (e->Listener != ((void*)0))
  {
   e->Listener->DisableDos = e->DisableDos;
  }
 }

 Insert(s->ServerListenerList, e);

 return 1;
}
