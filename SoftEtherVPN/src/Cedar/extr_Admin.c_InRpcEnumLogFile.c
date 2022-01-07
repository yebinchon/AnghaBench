
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumItem; TYPE_1__* Items; } ;
struct TYPE_6__ {int UpdatedTime; int FileSize; int ServerName; int FilePath; } ;
typedef TYPE_1__ RPC_ENUM_LOG_FILE_ITEM ;
typedef TYPE_2__ RPC_ENUM_LOG_FILE ;
typedef int PACK ;


 int PackGetInt (int *,char*) ;
 int PackGetInt64Ex (int *,char*,size_t) ;
 int PackGetIntEx (int *,char*,size_t) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumLogFile(RPC_ENUM_LOG_FILE *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_LOG_FILE));
 t->NumItem = PackGetInt(p, "NumItem");
 t->Items = ZeroMalloc(sizeof(RPC_ENUM_LOG_FILE_ITEM) * t->NumItem);

 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_LOG_FILE_ITEM *e = &t->Items[i];

  PackGetStrEx(p, "FilePath", e->FilePath, sizeof(e->FilePath), i);
  PackGetStrEx(p, "ServerName", e->ServerName, sizeof(e->ServerName), i);
  e->FileSize = PackGetIntEx(p, "FileSize", i);
  e->UpdatedTime = PackGetInt64Ex(p, "UpdatedTime", i);
 }
}
