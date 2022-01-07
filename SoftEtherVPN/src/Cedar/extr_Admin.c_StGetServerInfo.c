
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int st ;
typedef int UINT ;
struct TYPE_16__ {TYPE_10__* Server; } ;
struct TYPE_15__ {TYPE_1__* Server; int Build; int Version; int BuildInfo; int VerString; } ;
struct TYPE_14__ {int OsInfo; int ServerFamilyName; int ServerBuildDate; int wSecond; int wMinute; int wHour; int wDay; int wMonth; int wYear; int ServerType; int ServerHostName; int ServerBuildInt; int ServerVerInt; int ServerBuildInfoString; int ServerVersionString; int ServerProductName; } ;
struct TYPE_13__ {int ServerType; } ;
struct TYPE_12__ {TYPE_4__* Cedar; } ;
typedef TYPE_2__ SYSTEMTIME ;
typedef TYPE_2__ RPC_SERVER_INFO ;
typedef int OS_INFO ;
typedef TYPE_4__ CEDAR ;
typedef TYPE_5__ ADMIN ;


 int BUILD_DATE_D ;
 int BUILD_DATE_HO ;
 int BUILD_DATE_M ;
 int BUILD_DATE_MI ;
 int BUILD_DATE_SE ;
 int BUILD_DATE_Y ;
 int CopyOsInfo (int *,int *) ;
 int ERR_INTERNAL_ERROR ;
 int ERR_NO_ERROR ;
 int FreeRpcServerInfo (TYPE_2__*) ;
 int GetMachineName (int ,int) ;
 int * GetOsInfo () ;
 int GetServerProductName (TYPE_10__*,int ,int) ;
 int StrCpy (int ,int,int ) ;
 int SystemToUINT64 (TYPE_2__*) ;
 int UPDATE_FAMILY_NAME ;
 int Zero (TYPE_2__*,int) ;

UINT StGetServerInfo(ADMIN *a, RPC_SERVER_INFO *t)
{
 CEDAR *c;
 OS_INFO *info;
 SYSTEMTIME st;

 if (a == ((void*)0) || t == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 FreeRpcServerInfo(t);
 Zero(t, sizeof(RPC_SERVER_INFO));

 c = a->Server->Cedar;

 GetServerProductName(a->Server, t->ServerProductName, sizeof(t->ServerProductName));

 StrCpy(t->ServerVersionString, sizeof(t->ServerVersionString), c->VerString);
 StrCpy(t->ServerBuildInfoString, sizeof(t->ServerBuildInfoString), c->BuildInfo);
 t->ServerVerInt = c->Version;
 t->ServerBuildInt = c->Build;
 GetMachineName(t->ServerHostName, sizeof(t->ServerHostName));
 t->ServerType = c->Server->ServerType;

 Zero(&st, sizeof(st));
 st.wYear = BUILD_DATE_Y;
 st.wMonth = BUILD_DATE_M;
 st.wDay = BUILD_DATE_D;
 st.wHour = BUILD_DATE_HO;
 st.wMinute = BUILD_DATE_MI;
 st.wSecond = BUILD_DATE_SE;

 t->ServerBuildDate = SystemToUINT64(&st);
 StrCpy(t->ServerFamilyName, sizeof(t->ServerFamilyName), UPDATE_FAMILY_NAME);

 info = GetOsInfo();
 if (info != ((void*)0))
 {
  CopyOsInfo(&t->OsInfo, info);
 }

 return ERR_NO_ERROR;
}
