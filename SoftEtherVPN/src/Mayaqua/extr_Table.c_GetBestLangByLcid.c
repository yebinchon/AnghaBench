
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {int LcidList; } ;
typedef int LIST ;
typedef TYPE_1__ LANGLIST ;


 TYPE_1__* GetBestLangByName (int *,char*) ;
 scalar_t__ IsIntInList (int ,scalar_t__) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;

LANGLIST *GetBestLangByLcid(LIST *o, UINT lcid)
{
 LANGLIST *ret;
 UINT i;

 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  LANGLIST *e = LIST_DATA(o, i);

  if (IsIntInList(e->LcidList, lcid))
  {
   return e;
  }
 }

 ret = GetBestLangByName(o, "en");

 return ret;
}
