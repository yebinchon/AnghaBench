
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {int Cedar; } ;
struct TYPE_8__ {TYPE_5__* Server; } ;
struct TYPE_7__ {int DeviceName; int HubName; } ;
typedef TYPE_1__ RPC_LOCALBRIDGE ;
typedef TYPE_2__ ADMIN ;


 int ALog (TYPE_2__*,int *,char*,int ,int ) ;
 int DeleteLocalBridge (int ,int ,int ) ;
 int ERR_INVALID_PARAMETER ;
 int ERR_NO_ERROR ;
 int ERR_OBJECT_NOT_FOUND ;
 int IncrementServerConfigRevision (TYPE_5__*) ;
 scalar_t__ IsEmptyStr (int ) ;
 int SERVER_ADMIN_ONLY ;

UINT StDeleteLocalBridge(ADMIN *a, RPC_LOCALBRIDGE *t)
{
 if (IsEmptyStr(t->DeviceName) || IsEmptyStr(t->HubName))
 {
  return ERR_INVALID_PARAMETER;
 }

 SERVER_ADMIN_ONLY;

 ALog(a, ((void*)0), "LA_DELETE_BRIDGE", t->HubName, t->DeviceName);

 if (DeleteLocalBridge(a->Server->Cedar, t->HubName, t->DeviceName) == 0)
 {
  return ERR_OBJECT_NOT_FOUND;
 }

 IncrementServerConfigRevision(a->Server);

 return ERR_NO_ERROR;
}
