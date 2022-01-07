
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ ExpireDate; TYPE_5__* Admin; } ;
typedef TYPE_2__ WU_CONTEXT ;
struct TYPE_10__ {TYPE_1__* Cedar; } ;
typedef TYPE_3__ WEBUI ;
struct TYPE_12__ {int ServerAdmin; int * LogFileList; TYPE_4__* Rpc; int Server; int * HubName; } ;
struct TYPE_11__ {int ServerAdminMode; int ServerMode; int IsVpnServer; int Lock; TYPE_5__* Param; int Name; } ;
struct TYPE_8__ {int Server; } ;
typedef TYPE_4__ RPC ;
typedef TYPE_5__ ADMIN ;


 int * CopyStr (char*) ;
 scalar_t__ Malloc (int) ;
 int NewLock () ;
 int StrCpy (int ,int,char*) ;
 scalar_t__ StrLen (char*) ;
 scalar_t__ Tick64 () ;
 scalar_t__ WU_CONTEXT_EXPIRE ;
 scalar_t__ ZeroMalloc (int) ;

__attribute__((used)) static WU_CONTEXT *WuNewContext(WEBUI *wu, char *hubname)
{
 WU_CONTEXT *context = (WU_CONTEXT*)Malloc(sizeof(WU_CONTEXT));

 if(StrLen(hubname) == 0)
 {
  hubname=((void*)0);
 }
 context->Admin = (ADMIN*)ZeroMalloc(sizeof(ADMIN));
 context->Admin->HubName = hubname != ((void*)0) ? CopyStr(hubname) : ((void*)0);
 context->Admin->Server = wu->Cedar->Server;
 context->Admin->ServerAdmin = hubname == ((void*)0) ? 1: 0;
 context->Admin->Rpc = (RPC*)ZeroMalloc(sizeof(RPC));
 StrCpy(context->Admin->Rpc->Name, sizeof(context->Admin->Rpc->Name), "WEBUI");
 context->Admin->Rpc->Param = context->Admin;
 context->Admin->Rpc->ServerAdminMode = context->Admin->ServerAdmin;
 context->Admin->Rpc->ServerMode = 1;
 context->Admin->Rpc->IsVpnServer = 1;
 context->Admin->Rpc->Lock = NewLock();
 context->Admin->LogFileList = ((void*)0);

 context->ExpireDate = Tick64() + WU_CONTEXT_EXPIRE;

 return context;
}
