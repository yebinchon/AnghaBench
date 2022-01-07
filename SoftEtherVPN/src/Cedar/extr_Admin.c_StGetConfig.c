
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_18__ {TYPE_2__* Server; } ;
struct TYPE_17__ {scalar_t__ Size; int Buf; } ;
struct TYPE_16__ {int FileData; int FileName; } ;
struct TYPE_15__ {TYPE_1__* CfgRw; } ;
struct TYPE_14__ {char* FileName; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_CONFIG ;
typedef int FOLDER ;
typedef TYPE_4__ BUF ;
typedef TYPE_5__ ADMIN ;


 int ALog (TYPE_5__*,int *,char*) ;
 int CfgDeleteFolder (int *) ;
 TYPE_4__* CfgFolderToBuf (int *,int) ;
 int Copy (int ,int ,scalar_t__) ;
 int ERR_INTERNAL_ERROR ;
 int ERR_NO_ERROR ;
 int FreeBuf (TYPE_4__*) ;
 int FreeRpcConfig (TYPE_3__*) ;
 int SERVER_ADMIN_ONLY ;
 int * SiWriteConfigurationToCfg (TYPE_2__*) ;
 int StrCpy (int ,int,char*) ;
 int Zero (TYPE_3__*,int) ;
 int ZeroMalloc (scalar_t__) ;

UINT StGetConfig(ADMIN *a, RPC_CONFIG *t)
{
 SERVER *s;

 SERVER_ADMIN_ONLY;

 FreeRpcConfig(t);
 Zero(t, sizeof(RPC_CONFIG));

 s = a->Server;

 ALog(a, ((void*)0), "LA_GET_CONFIG");

 if (s->CfgRw != ((void*)0))
 {
  FOLDER *f = SiWriteConfigurationToCfg(s);
  BUF *b = CfgFolderToBuf(f, 1);

  StrCpy(t->FileName, sizeof(t->FileName), s->CfgRw->FileName + (s->CfgRw->FileName[0] == '@' ? 1 : 0));

  t->FileData = ZeroMalloc(b->Size + 1);
  Copy(t->FileData, b->Buf, b->Size);

  CfgDeleteFolder(f);
  FreeBuf(b);

  return ERR_NO_ERROR;
 }
 else
 {
  return ERR_INTERNAL_ERROR;
 }
}
