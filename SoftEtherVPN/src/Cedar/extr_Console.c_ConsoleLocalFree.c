
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ Win32_OldConsoleWidth; int OutputLock; int * OutFile; int InBuf; int * InFile; scalar_t__ Param; } ;
typedef TYPE_1__ LOCAL_CONSOLE_PARAM ;
typedef TYPE_1__ CONSOLE ;


 int DeleteLock (int ) ;
 int FileClose (int *) ;
 int Free (TYPE_1__*) ;
 int FreeBuf (int ) ;
 int MsSetConsoleWidth (scalar_t__) ;

void ConsoleLocalFree(CONSOLE *c)
{
 LOCAL_CONSOLE_PARAM *p;

 if (c == ((void*)0))
 {
  return;
 }

 p = (LOCAL_CONSOLE_PARAM *)c->Param;
 if (p != ((void*)0))
 {
  if (p->InFile != ((void*)0))
  {
   FileClose(p->InFile);
   FreeBuf(p->InBuf);
  }

  if (p->OutFile != ((void*)0))
  {
   FileClose(p->OutFile);
  }

  Free(p);
 }

 DeleteLock(c->OutputLock);


 Free(c);
}
