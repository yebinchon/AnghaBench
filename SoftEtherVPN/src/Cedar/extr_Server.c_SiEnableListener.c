
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {int DisableDos; } ;
struct TYPE_8__ {int Cedar; } ;
struct TYPE_7__ {int Enabled; int DisableDos; TYPE_6__* Listener; int Port; } ;
typedef TYPE_1__ SERVER_LISTENER ;
typedef TYPE_2__ SERVER ;


 int LISTENER_TCP ;
 TYPE_6__* NewListener (int ,int ,int ) ;
 TYPE_1__* SiGetListener (TYPE_2__*,scalar_t__) ;

bool SiEnableListener(SERVER *s, UINT port)
{
 SERVER_LISTENER *e;

 if (s == ((void*)0) || port == 0)
 {
  return 0;
 }


 e = SiGetListener(s, port);
 if (e == ((void*)0))
 {
  return 0;
 }

 if (e->Enabled)
 {

  return 1;
 }


 e->Listener = NewListener(s->Cedar, LISTENER_TCP, e->Port);
 if (e->Listener == ((void*)0))
 {

  return 0;
 }

 e->Listener->DisableDos = e->DisableDos;

 e->Enabled = 1;

 return 1;
}
