
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_12__ {int UpdatedTime; int FileSize; int ServerName; int Path; } ;
struct TYPE_11__ {size_t NumItem; TYPE_1__* Items; } ;
struct TYPE_10__ {int UpdatedTime; int FileSize; int ServerName; int FilePath; } ;
typedef TYPE_1__ RPC_ENUM_LOG_FILE_ITEM ;
typedef TYPE_2__ RPC_ENUM_LOG_FILE ;
typedef TYPE_3__ LOG_FILE ;
typedef int LIST ;


 int Add (int *,TYPE_3__*) ;
 int CmpLogFile ;
 int FreeEnumLogFile (int *) ;
 int FreeRpcEnumLogFile (TYPE_2__*) ;
 TYPE_3__* LIST_DATA (int *,size_t) ;
 size_t LIST_NUM (int *) ;
 int * NewListFast (int ) ;
 int Sort (int *) ;
 int StrCpy (int ,int,int ) ;
 int Zero (TYPE_2__*,int) ;
 void* ZeroMalloc (int) ;

void AdjoinRpcEnumLogFile(RPC_ENUM_LOG_FILE *t, RPC_ENUM_LOG_FILE *src)
{
 LIST *o;
 UINT i;

 if (t == ((void*)0) || src == ((void*)0))
 {
  return;
 }

 o = NewListFast(CmpLogFile);

 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_LOG_FILE_ITEM *e = &t->Items[i];
  LOG_FILE *f = ZeroMalloc(sizeof(LOG_FILE));

  f->FileSize = e->FileSize;
  StrCpy(f->Path, sizeof(f->Path), e->FilePath);
  StrCpy(f->ServerName, sizeof(f->ServerName), e->ServerName);
  f->UpdatedTime = e->UpdatedTime;

  Add(o, f);
 }

 for (i = 0;i < src->NumItem;i++)
 {
  RPC_ENUM_LOG_FILE_ITEM *e = &src->Items[i];
  LOG_FILE *f = ZeroMalloc(sizeof(LOG_FILE));

  f->FileSize = e->FileSize;
  StrCpy(f->Path, sizeof(f->Path), e->FilePath);
  StrCpy(f->ServerName, sizeof(f->ServerName), e->ServerName);
  f->UpdatedTime = e->UpdatedTime;

  Add(o, f);
 }

 FreeRpcEnumLogFile(t);

 Sort(o);

 Zero(t, sizeof(RPC_ENUM_LOG_FILE));
 t->NumItem = LIST_NUM(o);
 t->Items = ZeroMalloc(sizeof(RPC_ENUM_LOG_FILE_ITEM) * t->NumItem);

 for (i = 0;i < t->NumItem;i++)
 {
  LOG_FILE *f = LIST_DATA(o, i);
  RPC_ENUM_LOG_FILE_ITEM *e = &t->Items[i];

  StrCpy(e->FilePath, sizeof(e->FilePath), f->Path);
  StrCpy(e->ServerName, sizeof(e->ServerName), f->ServerName);
  e->FileSize = f->FileSize;
  e->UpdatedTime = f->UpdatedTime;
 }

 FreeEnumLogFile(o);
}
