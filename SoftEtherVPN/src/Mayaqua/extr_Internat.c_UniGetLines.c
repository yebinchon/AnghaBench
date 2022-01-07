
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
typedef int UNI_TOKEN_LIST ;
typedef size_t UINT ;
struct TYPE_6__ {scalar_t__ Buf; } ;
typedef int LIST ;
typedef TYPE_1__ BUF ;


 int Add (int *,int ) ;
 int ClearBuf (TYPE_1__*) ;
 int FreeBuf (TYPE_1__*) ;
 TYPE_1__* NewBuf () ;
 int * NewListFast (int *) ;
 int UniCopyStr (int*) ;
 int UniFreeStrList (int *) ;
 int * UniListToTokenList (int *) ;
 int * UniNullToken () ;
 size_t UniStrLen (int*) ;
 int WriteBuf (TYPE_1__*,int*,int) ;

UNI_TOKEN_LIST *UniGetLines(wchar_t *str)
{
 UINT i, len;
 BUF *b = ((void*)0);
 LIST *o;
 UNI_TOKEN_LIST *ret;

 if (str == ((void*)0))
 {
  return UniNullToken();
 }

 o = NewListFast(((void*)0));

 len = UniStrLen(str);

 b = NewBuf();

 for (i = 0;i < len;i++)
 {
  wchar_t c = str[i];
  bool f = 0;

  if (c == L'\r')
  {
   if (str[i + 1] == L'\n')
   {
    i++;
   }
   f = 1;
  }
  else if (c == L'\n')
  {
   f = 1;
  }

  if (f)
  {
   wchar_t zero = 0;
   wchar_t *s;
   WriteBuf(b, &zero, sizeof(wchar_t));

   s = (wchar_t *)b->Buf;

   Add(o, UniCopyStr(s));

   ClearBuf(b);
  }
  else
  {
   WriteBuf(b, &c, sizeof(wchar_t));
  }
 }

 if (1)
 {
  wchar_t zero = 0;
  wchar_t *s;
  WriteBuf(b, &zero, sizeof(wchar_t));

  s = (wchar_t *)b->Buf;

  Add(o, UniCopyStr(s));

  ClearBuf(b);
 }

 FreeBuf(b);

 ret = UniListToTokenList(o);

 UniFreeStrList(o);

 return ret;
}
