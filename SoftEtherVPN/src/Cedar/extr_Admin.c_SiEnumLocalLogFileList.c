
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_10__ {int UpdatedTime; int FileSize; int ServerName; int Path; } ;
struct TYPE_9__ {size_t NumItem; TYPE_1__* Items; } ;
struct TYPE_8__ {int UpdatedTime; int FileSize; int ServerName; int FilePath; } ;
typedef int SERVER ;
typedef TYPE_1__ RPC_ENUM_LOG_FILE_ITEM ;
typedef TYPE_2__ RPC_ENUM_LOG_FILE ;
typedef TYPE_3__ LOG_FILE ;
typedef int LIST ;


 int * EnumLogFile (char*) ;
 int FreeEnumLogFile (int *) ;
 TYPE_3__* LIST_DATA (int *,size_t) ;
 size_t LIST_NUM (int *) ;
 int StrCpy (int ,int,int ) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void SiEnumLocalLogFileList(SERVER *s, char *hubname, RPC_ENUM_LOG_FILE *t)
{
 LIST *o;
 UINT i;

 if (s == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_LOG_FILE));

 o = EnumLogFile(hubname);

 t->NumItem = LIST_NUM(o);
 t->Items = ZeroMalloc(sizeof(RPC_ENUM_LOG_FILE_ITEM) * t->NumItem);

 for (i = 0;i < LIST_NUM(o);i++)
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
