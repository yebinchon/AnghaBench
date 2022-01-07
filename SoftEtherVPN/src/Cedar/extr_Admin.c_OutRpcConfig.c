
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int FileData; int FileName; } ;
typedef TYPE_1__ RPC_CONFIG ;
typedef int PACK ;


 int PackAddData (int *,char*,int ,int ) ;
 int PackAddStr (int *,char*,int ) ;
 int StrLen (int ) ;

void OutRpcConfig(PACK *p, RPC_CONFIG *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "FileName", t->FileName);
 PackAddData(p, "FileData", t->FileData, StrLen(t->FileData));
}
