
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef size_t UINT ;
typedef int LIST ;


 int Free (int*) ;
 int Insert (int *,int ) ;
 int LIST_DATA (int *,size_t) ;
 int LIST_NUM (int *) ;
 int* Malloc (scalar_t__) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 int UniCopyStr (int*) ;
 TYPE_1__* UniNullToken () ;
 size_t UniStrLen (int*) ;
 scalar_t__ UniStrSize (int*) ;
 void* ZeroMalloc (int) ;

UNI_TOKEN_LIST *UniParseCmdLine(wchar_t *str)
{
 UNI_TOKEN_LIST *t;
 LIST *o;
 UINT i, len, wp, mode;
 wchar_t c;
 wchar_t *tmp;
 bool ignore_space = 0;

 if (str == ((void*)0))
 {

  return UniNullToken();
 }

 o = NewListFast(((void*)0));
 tmp = Malloc(UniStrSize(str) + 32);

 wp = 0;
 mode = 0;

 len = UniStrLen(str);
 for (i = 0;i < len;i++)
 {
  c = str[i];

  switch (mode)
  {
  case 0:

   if (c == L' ' || c == L'\t')
   {

   }
   else
   {

    if (c == L'\"')
    {
     if (str[i + 1] == L'\"')
     {

      tmp[wp++] = L'\"';
      i++;
     }
     else
     {

     ignore_space = 1;
     }
    }
    else
    {
     tmp[wp++] = c;
    }

    mode = 1;
   }
   break;

  case 1:
   if (ignore_space == 0 && (c == L' ' || c == L'\t'))
   {

    tmp[wp++] = 0;
    wp = 0;

    Insert(o, UniCopyStr(tmp));
    mode = 0;
   }
   else
   {
    if (c == L'\"')
    {
     if (str[i + 1] == L'\"')
     {

      tmp[wp++] = L'\"';
      i++;
     }
     else
     {
      if (ignore_space == 0)
      {

       ignore_space = 1;
      }
      else
      {

       ignore_space = 0;
      }
     }
    }
    else
    {
     tmp[wp++] = c;
    }
   }
   break;
  }
 }

 if (wp != 0)
 {
  tmp[wp++] = 0;
  Insert(o, UniCopyStr(tmp));
 }

 Free(tmp);

 t = ZeroMalloc(sizeof(UNI_TOKEN_LIST));
 t->NumTokens = LIST_NUM(o);
 t->Token = ZeroMalloc(sizeof(wchar_t *) * t->NumTokens);
 for (i = 0;i < t->NumTokens;i++)
 {
  t->Token[i] = LIST_DATA(o, i);
 }

 ReleaseList(o);

 return t;
}
