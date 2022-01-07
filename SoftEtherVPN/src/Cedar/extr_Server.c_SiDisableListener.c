
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int Enabled; int * Listener; } ;
typedef TYPE_1__ SERVER_LISTENER ;
typedef int SERVER ;


 int ReleaseListener (int *) ;
 TYPE_1__* SiGetListener (int *,scalar_t__) ;
 int StopListener (int *) ;

bool SiDisableListener(SERVER *s, UINT port)
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

 if (e->Enabled == 0 || e->Listener == ((void*)0))
 {

  return 1;
 }


 StopListener(e->Listener);


 ReleaseListener(e->Listener);
 e->Listener = ((void*)0);

 e->Enabled = 0;

 return 1;
}
