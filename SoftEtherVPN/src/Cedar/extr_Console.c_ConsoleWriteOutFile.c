
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char wchar_t ;
typedef scalar_t__ UINT ;
typedef char UCHAR ;
struct TYPE_5__ {scalar_t__ Param; } ;
struct TYPE_4__ {int * OutFile; } ;
typedef TYPE_1__ LOCAL_CONSOLE_PARAM ;
typedef TYPE_2__ CONSOLE ;


 scalar_t__ CalcUniToUtf8 (char*) ;
 int FileWrite (int *,char*,scalar_t__) ;
 int Free (char*) ;
 scalar_t__ StrLen (char*) ;
 int UniEndWith (char*,char*) ;
 char* UniNormalizeCrlf (char*) ;
 int UniToUtf8 (char*,scalar_t__,char*) ;
 char* ZeroMalloc (scalar_t__) ;

void ConsoleWriteOutFile(CONSOLE *c, wchar_t *str, bool add_last_crlf)
{
 LOCAL_CONSOLE_PARAM *p;

 if (c == ((void*)0) || str == ((void*)0))
 {
  return;
 }

 p = (LOCAL_CONSOLE_PARAM *)c->Param;

 if (p != ((void*)0) && p->OutFile != ((void*)0))
 {
  wchar_t *tmp = UniNormalizeCrlf(str);
  UINT utf8_size;
  UCHAR *utf8;

  utf8_size = CalcUniToUtf8(tmp);
  utf8 = ZeroMalloc(utf8_size + 1);
  UniToUtf8(utf8, utf8_size + 1, tmp);

  FileWrite(p->OutFile, utf8, utf8_size);

  if (UniEndWith(str, L"\n") == 0 && add_last_crlf)
  {
   char *crlf = "\r\n";
   FileWrite(p->OutFile, "\r\n", StrLen(crlf));
  }

  Free(utf8);
  Free(tmp);
 }

}
