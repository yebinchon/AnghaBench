
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Buffer; int Offset; int ServerName; int FilePath; } ;
typedef TYPE_1__ RPC_READ_LOG_FILE ;
typedef int PACK ;


 int PackAddBuf (int *,char*,int *) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcReadLogFile(PACK *p, RPC_READ_LOG_FILE *t)
{

 if (p == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "FilePath", t->FilePath);
 PackAddStr(p, "ServerName", t->ServerName);
 PackAddInt(p, "Offset", t->Offset);

 if (t->Buffer != ((void*)0))
 {
  PackAddBuf(p, "Buffer", t->Buffer);
 }
}
