
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int OsType; } ;
struct TYPE_10__ {TYPE_1__* Cedar; } ;
struct TYPE_9__ {int OsType; int IsVLanNameRegulated; int ProcessId; int ClientBuildInt; int ClientVerInt; int ClientBuildInfoString; int ClientVersionString; int ClientProductName; } ;
struct TYPE_8__ {int Build; int Version; int BuildInfo; int VerString; } ;
typedef TYPE_2__ RPC_CLIENT_VERSION ;
typedef TYPE_3__ CLIENT ;


 int CEDAR_CLIENT_STR ;
 TYPE_5__* GetOsInfo () ;
 int MsGetProcessId () ;
 int MsIsInfCatalogRequired () ;
 int StrCpy (int ,int,int ) ;
 int Zero (TYPE_2__*,int) ;

bool CtGetClientVersion(CLIENT *c, RPC_CLIENT_VERSION *ver)
{

 if (ver == ((void*)0))
 {
  return 0;
 }

 Zero(ver, sizeof(RPC_CLIENT_VERSION));
 StrCpy(ver->ClientProductName, sizeof(ver->ClientProductName), CEDAR_CLIENT_STR);
 StrCpy(ver->ClientVersionString, sizeof(ver->ClientVersionString), c->Cedar->VerString);
 StrCpy(ver->ClientBuildInfoString, sizeof(ver->ClientBuildInfoString), c->Cedar->BuildInfo);
 ver->ClientVerInt = c->Cedar->Version;
 ver->ClientBuildInt = c->Cedar->Build;
 ver->OsType = GetOsInfo()->OsType;

 return 1;
}
