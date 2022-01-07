
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int LIST ;


 int CopyStr (char*) ;
 int Free (char*) ;
 int Insert (int *,int ) ;
 int LIST_DATA (int *,size_t) ;
 int LIST_NUM (int *) ;
 char* Malloc (scalar_t__) ;
 int * NewListFast (int *) ;
 TYPE_1__* NullToken () ;
 int ReleaseList (int *) ;
 size_t StrLen (char*) ;
 scalar_t__ StrSize (char*) ;
 void* ZeroMalloc (int) ;

TOKEN_LIST *ParseCmdLine(char *str)
{
 TOKEN_LIST *t;
 LIST *o;
 UINT i, len, wp, mode;
 char c;
 char *tmp;
 bool ignore_space = 0;

 if (str == ((void*)0))
 {

  return NullToken();
 }

 o = NewListFast(((void*)0));
 tmp = Malloc(StrSize(str) + 32);

 wp = 0;
 mode = 0;

 len = StrLen(str);
 for (i = 0;i < len;i++)
 {
  c = str[i];

  switch (mode)
  {
  case 0:

   if (c == ' ' || c == '\t')
   {

   }
   else
   {

    if (c == '\"')
    {
     if (str[i + 1] == '\"')
     {

      tmp[wp++] = '\"';
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
   if (ignore_space == 0 && (c == ' ' || c == '\t'))
   {

    tmp[wp++] = 0;
    wp = 0;

    Insert(o, CopyStr(tmp));
    mode = 0;
   }
   else
   {
    if (c == '\"')
    {
     if (str[i + 1] == '\"')
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
  Insert(o, CopyStr(tmp));
 }

 Free(tmp);

 t = ZeroMalloc(sizeof(TOKEN_LIST));
 t->NumTokens = LIST_NUM(o);
 t->Token = ZeroMalloc(sizeof(char *) * t->NumTokens);
 for (i = 0;i < t->NumTokens;i++)
 {
  t->Token[i] = LIST_DATA(o, i);
 }

 ReleaseList(o);

 return t;
}
