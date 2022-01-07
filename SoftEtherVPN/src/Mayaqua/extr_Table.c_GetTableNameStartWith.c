
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp ;
typedef size_t UINT ;
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {size_t NumTokens; void** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ TABLE ;
typedef int LIST ;


 scalar_t__ Cmp (char*,char*,size_t) ;
 int CopyStr (char*) ;
 int Insert (int *,int ) ;
 void* LIST_DATA (int *,size_t) ;
 size_t LIST_NUM (int *) ;
 int MAX_SIZE ;
 int * NewListFast (int *) ;
 TYPE_1__* NullToken () ;
 int ReleaseList (int *) ;
 int StrCpy (char*,int,char*) ;
 size_t StrLen (char*) ;
 int StrUpper (char*) ;
 int * TableList ;
 void* ZeroMalloc (int) ;

TOKEN_LIST *GetTableNameStartWith(char *str)
{
 UINT i;
 UINT len;
 LIST *o;
 TOKEN_LIST *t;
 char tmp[MAX_SIZE];

 if (str == ((void*)0))
 {
  return NullToken();
 }

 StrCpy(tmp, sizeof(tmp), str);
 StrUpper(tmp);

 len = StrLen(tmp);

 o = NewListFast(((void*)0));

 for (i = 0;i < LIST_NUM(TableList);i++)
 {
  TABLE *t = LIST_DATA(TableList, i);
  UINT len2 = StrLen(t->name);

  if (len2 >= len)
  {
   if (Cmp(t->name, tmp, len) == 0)
   {
    Insert(o, CopyStr(t->name));
   }
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

 return t;
}
