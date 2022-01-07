
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int * LangList; } ;
typedef int LIST ;
typedef TYPE_1__ LANGLIST ;


 TYPE_1__* GetBestLangByName (int *,char*) ;
 void* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 scalar_t__ StartWith (char*,char*) ;
 scalar_t__ StrCmpi (char*,char*) ;

LANGLIST *GetBestLangByLangStr(LIST *o, char *str)
{
 UINT i;
 LANGLIST *ret;

 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  LANGLIST *e = LIST_DATA(o, i);
  UINT j;

  for (j = 0;j < LIST_NUM(e->LangList);j++)
  {
   char *v = LIST_DATA(e->LangList, j);

   if (StrCmpi(v, str) == 0)
   {
    return e;
   }
  }
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  LANGLIST *e = LIST_DATA(o, i);
  UINT j;

  for (j = 0;j < LIST_NUM(e->LangList);j++)
  {
   char *v = LIST_DATA(e->LangList, j);

   if (StartWith(str, v) || StartWith(v, str))
   {
    return e;
   }
  }
 }

 ret = GetBestLangByName(o, "en");

 return ret;
}
