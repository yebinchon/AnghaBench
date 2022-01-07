
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_7__ {scalar_t__ Param; } ;
struct TYPE_6__ {int * InBuf; } ;
typedef TYPE_1__ LOCAL_CONSOLE_PARAM ;
typedef TYPE_2__ CONSOLE ;


 char* ConsoleReadNextFromInFile (TYPE_2__*) ;
 int ConsoleWriteOutFile (TYPE_2__*,char*,int) ;
 char* Prompt (char*) ;
 int UniPrint (char*,char*) ;
 char* _UU (char*) ;

wchar_t *ConsoleLocalReadLine(CONSOLE *c, wchar_t *prompt, bool nofile)
{
 wchar_t *ret;
 LOCAL_CONSOLE_PARAM *p;

 if (c == ((void*)0))
 {
  return ((void*)0);
 }
 p = (LOCAL_CONSOLE_PARAM *)c->Param;
 if (prompt == ((void*)0))
 {
  prompt = L">";
 }

 ConsoleWriteOutFile(c, prompt, 0);

 if (nofile == 0 && p->InBuf != ((void*)0))
 {

  ret = ConsoleReadNextFromInFile(c);

  if (ret != ((void*)0))
  {

   UniPrint(L"%s", prompt);


   UniPrint(L"%s\n", ret);
  }
 }
 else
 {

  ret = Prompt(prompt);
 }

 if (ret != ((void*)0))
 {
  ConsoleWriteOutFile(c, ret, 1);
 }
 else
 {
  ConsoleWriteOutFile(c, _UU("CON_USER_CANCEL"), 1);
 }

 return ret;
}
