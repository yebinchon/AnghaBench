
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int NumTokens; int** Token; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef int UINT ;
typedef int LIST ;


 int CopyUniStr (char*) ;
 int Free (int*) ;
 int GetNextWordWidth (int*) ;
 int Insert (int *,int ) ;
 int* LIST_DATA (int *,int) ;
 int LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 int UniCopyStr (int*) ;
 TYPE_1__* UniNullToken () ;
 int UniStrLen (int*) ;
 int UniStrWidth (int*) ;
 int UniTrimLeft (int*) ;
 void* ZeroMalloc (int) ;

UNI_TOKEN_LIST *SeparateStringByWidth(wchar_t *str, UINT width)
{
 UINT wp;
 wchar_t *tmp;
 UINT len, i;
 LIST *o;
 UNI_TOKEN_LIST *ret;

 if (str == ((void*)0))
 {
  return UniNullToken();
 }
 if (width == 0)
 {
  width = 1;
 }

 o = NewListFast(((void*)0));

 len = UniStrLen(str);
 tmp = ZeroMalloc(sizeof(wchar_t) * (len + 32));
 wp = 0;

 for (i = 0;i < (len + 1);i++)
 {
  wchar_t c = str[i];
  UINT next_word_width;
  UINT remain_width;

  switch (c)
  {
  case 0:
  case L'\r':
  case L'\n':
   if (c == L'\r')
   {
    if (str[i + 1] == L'\n')
    {
     i++;
    }
   }

   tmp[wp++] = 0;
   wp = 0;

   Insert(o, UniCopyStr(tmp));
   break;

  default:
   next_word_width = GetNextWordWidth(&str[i]);
   remain_width = (width - UniStrWidth(tmp));

   if ((remain_width >= 1) && (next_word_width > remain_width) && (next_word_width <= width))
   {
    tmp[wp++] = 0;
    wp = 0;

    Insert(o, UniCopyStr(tmp));
   }

   tmp[wp++] = c;
   tmp[wp] = 0;
   if (UniStrWidth(tmp) >= width)
   {
    tmp[wp++] = 0;
    wp = 0;

    Insert(o, UniCopyStr(tmp));
   }
   break;
  }
 }

 if (LIST_NUM(o) == 0)
 {
  Insert(o, CopyUniStr(L""));
 }

 ret = ZeroMalloc(sizeof(UNI_TOKEN_LIST));
 ret->NumTokens = LIST_NUM(o);
 ret->Token = ZeroMalloc(sizeof(wchar_t *) * ret->NumTokens);

 for (i = 0;i < LIST_NUM(o);i++)
 {
  wchar_t *s = LIST_DATA(o, i);

  UniTrimLeft(s);

  ret->Token[i] = s;
 }

 ReleaseList(o);
 Free(tmp);

 return ret;
}
