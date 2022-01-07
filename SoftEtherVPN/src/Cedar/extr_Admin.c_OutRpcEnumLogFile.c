
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumItem; TYPE_1__* Items; } ;
struct TYPE_4__ {int UpdatedTime; int FileSize; int ServerName; int FilePath; } ;
typedef TYPE_1__ RPC_ENUM_LOG_FILE_ITEM ;
typedef TYPE_2__ RPC_ENUM_LOG_FILE ;
typedef int PACK ;


 int PackAddInt (int *,char*,size_t) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackAddTime64Ex (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumLogFile(PACK *p, RPC_ENUM_LOG_FILE *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "NumItem", t->NumItem);

 PackSetCurrentJsonGroupName(p, "LogFiles");
 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_LOG_FILE_ITEM *e = &t->Items[i];

  PackAddStrEx(p, "FilePath", e->FilePath, i, t->NumItem);
  PackAddStrEx(p, "ServerName", e->ServerName, i, t->NumItem);
  PackAddIntEx(p, "FileSize", e->FileSize, i, t->NumItem);
  PackAddTime64Ex(p, "UpdatedTime", e->UpdatedTime, i, t->NumItem);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
