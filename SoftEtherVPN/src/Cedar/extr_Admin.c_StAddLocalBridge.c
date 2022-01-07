
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tmp ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int Cedar; } ;
struct TYPE_8__ {TYPE_5__* Server; } ;
struct TYPE_7__ {int TapMode; int DeviceName; int HubName; } ;
typedef TYPE_1__ RPC_LOCALBRIDGE ;
typedef TYPE_2__ ADMIN ;


 int ALog (TYPE_2__*,int *,char*,int ,int ) ;
 int AddLocalBridge (int ,int ,int ,int,int,int ,int *,int) ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_LOCAL_BRIDGE_UNSUPPORTED ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_OBJECT_NOT_FOUND ;
 int IncrementServerConfigRevision (TYPE_5__*) ;
 scalar_t__ IsEmptyStr (int ) ;
 int IsEthSupported () ;
 int MAX_SIZE ;
 int SERVER_ADMIN_ONLY ;
 scalar_t__ Win32EthGetNameAndIdFromCombinedName (char*,int,int ) ;

UINT StAddLocalBridge(ADMIN *a, RPC_LOCALBRIDGE *t)
{
 if (IsEmptyStr(t->DeviceName) || IsEmptyStr(t->HubName))
 {
  return ERR_INVALID_PARAMETER;
 }

 SERVER_ADMIN_ONLY;


 if (IsEthSupported() == 0)
 {
  return ERR_LOCAL_BRIDGE_UNSUPPORTED;
 }
 ALog(a, ((void*)0), "LA_ADD_BRIDGE", t->HubName, t->DeviceName);

 AddLocalBridge(a->Server->Cedar, t->HubName, t->DeviceName, 0, 0, t->TapMode, ((void*)0), 0);

 IncrementServerConfigRevision(a->Server);

 return ERR_NO_ERROR;
}
