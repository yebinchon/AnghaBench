
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {int ServerListenerList; } ;
struct TYPE_9__ {TYPE_5__* Server; } ;
struct TYPE_8__ {int Port; } ;
typedef TYPE_1__ RPC_LISTENER ;
typedef TYPE_2__ ADMIN ;


 int ALog (TYPE_2__*,int *,char*,int ) ;
 int ERR_LISTENER_NOT_FOUND ;
 int ERR_NO_ERROR ;
 int IncrementServerConfigRevision (TYPE_5__*) ;
 int LockList (int ) ;
 int SERVER_ADMIN_ONLY ;
 int SiDeleteListener (TYPE_5__*,int ) ;
 int UnlockList (int ) ;

UINT StDeleteListener(ADMIN *a, RPC_LISTENER *t)
{
 UINT ret = ERR_NO_ERROR;

 SERVER_ADMIN_ONLY;


 LockList(a->Server->ServerListenerList);
 {
  if (SiDeleteListener(a->Server, t->Port) == 0)
  {
   ret = ERR_LISTENER_NOT_FOUND;
  }
  else
  {
   ALog(a, ((void*)0), "LA_DELETE_LISTENER", t->Port);

   IncrementServerConfigRevision(a->Server);
  }
 }
 UnlockList(a->Server->ServerListenerList);

 return ret;
}
