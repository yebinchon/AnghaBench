
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {size_t NumTokens; int ** Token; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef size_t UINT ;


 int IsEmptyUniStr (int *) ;
 int UniFreeToken (TYPE_1__*) ;
 TYPE_1__* UniParseToken (int *,char*) ;
 scalar_t__ UniStartWith (int *,char*) ;
 int UniToStr (char*,size_t,int *) ;
 int UniTrim (int *) ;

bool IsURLMsg(wchar_t *str, char *url, UINT url_size)
{
 UNI_TOKEN_LIST *t;
 bool ret = 0;
 UINT i;
 UINT n = 0;

 if (str == ((void*)0))
 {
  return 0;
 }

 t = UniParseToken(str, L"\r\n");

 for (i = 0;i < t->NumTokens;i++)
 {
  wchar_t *str = t->Token[i];

  if (IsEmptyUniStr(str) == 0)
  {
   n++;

   UniTrim(str);

   if (n == 1)
   {
    if (UniStartWith(str, L"http://") ||
     UniStartWith(str, L"https://") ||
     UniStartWith(str, L"ftp://"))
    {
     ret = 1;

     UniToStr(url, url_size, str);
    }
   }
  }
 }

 if (n != 1)
 {
  ret = 0;
 }

 UniFreeToken(t);

 return ret;
}
