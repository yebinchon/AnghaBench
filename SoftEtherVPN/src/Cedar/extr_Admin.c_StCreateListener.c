
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {int ServerListenerList; int * Cedar; } ;
struct TYPE_9__ {TYPE_5__* Server; } ;
struct TYPE_8__ {int Port; int Enable; } ;
typedef TYPE_1__ RPC_LISTENER ;
typedef int CEDAR ;
typedef TYPE_2__ ADMIN ;


 int ALog (TYPE_2__*,int *,char*,int) ;
 int ERR_INVALID_PARAMETER ;
 int ERR_LISTENER_ALREADY_EXISTS ;
 int ERR_NO_ERROR ;
 int IncrementServerConfigRevision (TYPE_5__*) ;
 int LockList (int ) ;
 int SERVER_ADMIN_ONLY ;
 int SiAddListener (TYPE_5__*,int,int ) ;
 int SleepThread (int) ;
 int UnlockList (int ) ;

UINT StCreateListener(ADMIN *a, RPC_LISTENER *t)
{
 UINT ret = ERR_NO_ERROR;
 CEDAR *c = a->Server->Cedar;

 if (t->Port == 0 || t->Port > 65535)
 {
  return ERR_INVALID_PARAMETER;
 }

 SERVER_ADMIN_ONLY;

 LockList(a->Server->ServerListenerList);
 {
  if (SiAddListener(a->Server, t->Port, t->Enable) == 0)
  {
   ret = ERR_LISTENER_ALREADY_EXISTS;
  }
  else
  {
   ALog(a, ((void*)0), "LA_CREATE_LISTENER", t->Port);

   IncrementServerConfigRevision(a->Server);
  }
 }
 UnlockList(a->Server->ServerListenerList);

 SleepThread(250);

 return ret;
}
