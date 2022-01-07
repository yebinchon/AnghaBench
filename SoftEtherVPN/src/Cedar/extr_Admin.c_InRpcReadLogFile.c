
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Buffer; int Offset; int ServerName; int FilePath; } ;
typedef TYPE_1__ RPC_READ_LOG_FILE ;
typedef int PACK ;


 int PackGetBuf (int *,char*) ;
 int PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcReadLogFile(RPC_READ_LOG_FILE *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_READ_LOG_FILE));
 PackGetStr(p, "FilePath", t->FilePath, sizeof(t->FilePath));
 PackGetStr(p, "ServerName", t->ServerName, sizeof(t->ServerName));
 t->Offset = PackGetInt(p, "Offset");

 t->Buffer = PackGetBuf(p, "Buffer");
}
