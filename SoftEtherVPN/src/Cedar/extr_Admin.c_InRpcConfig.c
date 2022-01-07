
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int FileData; int FileName; } ;
typedef TYPE_1__ RPC_CONFIG ;
typedef int PACK ;


 int PackGetData (int *,char*,int ) ;
 scalar_t__ PackGetDataSize (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;
 int ZeroMalloc (scalar_t__) ;

void InRpcConfig(RPC_CONFIG *t, PACK *p)
{
 UINT size;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_CONFIG));
 PackGetStr(p, "FileName", t->FileName, sizeof(t->FileName));
 size = PackGetDataSize(p, "FileData");
 t->FileData = ZeroMalloc(size + 1);
 PackGetData(p, "FileData", t->FileData);
}
