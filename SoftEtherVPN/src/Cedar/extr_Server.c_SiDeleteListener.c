
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_10__ {int ServerListenerList; } ;
struct TYPE_9__ {int * Listener; } ;
typedef TYPE_1__ SERVER_LISTENER ;
typedef TYPE_2__ SERVER ;


 int Delete (int ,TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 int ReleaseListener (int *) ;
 int SiDisableListener (TYPE_2__*,scalar_t__) ;
 TYPE_1__* SiGetListener (TYPE_2__*,scalar_t__) ;

bool SiDeleteListener(SERVER *s, UINT port)
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


 SiDisableListener(s, port);

 if (e->Listener != ((void*)0))
 {
  ReleaseListener(e->Listener);
 }

 Delete(s->ServerListenerList, e);
 Free(e);

 return 1;
}
