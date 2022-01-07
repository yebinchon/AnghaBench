
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int name ;
struct TYPE_7__ {int wSecond; int wMinute; int wHour; int wDay; int wMonth; int wYear; } ;
struct TYPE_6__ {int Lock; int io; int FileName; } ;
typedef TYPE_1__ TINY_LOG ;
typedef TYPE_2__ SYSTEMTIME ;


 int FileCreate (char*) ;
 int Format (char*,int,int ,int ,int ,int ,int ,int ,int ) ;
 int LocalTime (TYPE_2__*) ;
 int MAX_PATH ;
 int MakeDir (int ) ;
 int NewLock () ;
 int StrCpy (int ,int,char*) ;
 int TINY_LOG_DIRNAME ;
 int TINY_LOG_FILENAME ;
 TYPE_1__* ZeroMalloc (int) ;

TINY_LOG *NewTinyLog()
{
 char name[MAX_PATH];
 SYSTEMTIME st;
 TINY_LOG *t;

 LocalTime(&st);

 MakeDir(TINY_LOG_DIRNAME);

 Format(name, sizeof(name), TINY_LOG_FILENAME,
  st.wYear, st.wMonth, st.wDay, st.wHour, st.wMinute, st.wSecond);

 t = ZeroMalloc(sizeof(TINY_LOG));

 StrCpy(t->FileName, sizeof(t->FileName), name);
 t->io = FileCreate(name);
 t->Lock = NewLock();

 return t;
}
