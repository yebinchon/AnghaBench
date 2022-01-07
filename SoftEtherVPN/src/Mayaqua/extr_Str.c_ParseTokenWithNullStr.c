
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_10__ {scalar_t__ Buf; } ;
struct TYPE_9__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int LIST ;
typedef TYPE_2__ BUF ;


 int ClearBuf (TYPE_2__*) ;
 int CopyStr (char*) ;
 char* DefaultTokenSplitChars () ;
 int FreeBuf (TYPE_2__*) ;
 int Insert (int *,int ) ;
 int IsCharInStr (char*,char) ;
 int LIST_DATA (int *,size_t) ;
 int LIST_NUM (int *) ;
 TYPE_2__* NewBuf () ;
 int * NewListFast (int *) ;
 TYPE_1__* NullToken () ;
 int ReleaseList (int *) ;
 size_t StrLen (char*) ;
 int WriteBuf (TYPE_2__*,char*,int) ;
 void* ZeroMalloc (int) ;

TOKEN_LIST *ParseTokenWithNullStr(char *str, char *split_chars)
{
 LIST *o;
 UINT i, len;
 BUF *b;
 char zero = 0;
 TOKEN_LIST *t;

 if (str == ((void*)0))
 {
  return NullToken();
 }
 if (split_chars == ((void*)0))
 {
  split_chars = DefaultTokenSplitChars();
 }

 b = NewBuf();
 o = NewListFast(((void*)0));

 len = StrLen(str);

 for (i = 0;i < (len + 1);i++)
 {
  char c = str[i];
  bool flag = IsCharInStr(split_chars, c);

  if (c == '\0')
  {
   flag = 1;
  }

  if (flag == 0)
  {
   WriteBuf(b, &c, sizeof(char));
  }
  else
  {
   WriteBuf(b, &zero, sizeof(char));

   Insert(o, CopyStr((char *)b->Buf));
   ClearBuf(b);
  }
 }

 t = ZeroMalloc(sizeof(TOKEN_LIST));
 t->NumTokens = LIST_NUM(o);
 t->Token = ZeroMalloc(sizeof(char *) * t->NumTokens);

 for (i = 0;i < t->NumTokens;i++)
 {
  t->Token[i] = LIST_DATA(o, i);
 }

 ReleaseList(o);
 FreeBuf(b);

 return t;
}
