
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ Param; } ;
struct TYPE_4__ {int * InBuf; } ;
typedef TYPE_1__ LOCAL_CONSOLE_PARAM ;
typedef TYPE_2__ CONSOLE ;
typedef int BYTE ;


 scalar_t__ CalcUtf8ToUni (int *,int ) ;
 char* CfgReadNextLine (int *) ;
 int Free (char*) ;
 int IsEmptyStr (char*) ;
 int StrLen (char*) ;
 int Trim (char*) ;
 int Utf8ToUni (int *,scalar_t__,int *,int ) ;
 int * ZeroMalloc (scalar_t__) ;

wchar_t *ConsoleReadNextFromInFile(CONSOLE *c)
{
 LOCAL_CONSOLE_PARAM *p;
 char *str;

 if (c == ((void*)0))
 {
  return ((void*)0);
 }

 p = (LOCAL_CONSOLE_PARAM *)c->Param;

 if (p->InBuf == ((void*)0))
 {
  return ((void*)0);
 }

 while (1)
 {
  str = CfgReadNextLine(p->InBuf);

  if (str == ((void*)0))
  {
   return ((void*)0);
  }

  Trim(str);

  if (IsEmptyStr(str) == 0)
  {
   UINT size;
   wchar_t *ret;

   size = CalcUtf8ToUni((BYTE *)str, StrLen(str));
   ret = ZeroMalloc(size + 32);
   Utf8ToUni(ret, size, (BYTE *)str, StrLen(str));

   Free(str);

   return ret;
  }

  Free(str);
 }
}
