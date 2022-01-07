
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {char* Name; } ;
typedef int LIST ;
typedef TYPE_1__ LANGLIST ;


 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 scalar_t__ StartWith (char*,char*) ;
 scalar_t__ StrCmpi (char*,char*) ;

LANGLIST *GetBestLangByName(LIST *o, char *name)
{
 UINT i;
 LANGLIST *ret = ((void*)0);

 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  LANGLIST *e = LIST_DATA(o, i);

  if (StrCmpi(e->Name, name) == 0)
  {
   ret = e;
   break;
  }
 }

 if (ret != ((void*)0))
 {
  return ret;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  LANGLIST *e = LIST_DATA(o, i);

  if (StartWith(e->Name, name) || StartWith(name, e->Name))
  {
   ret = e;
   break;
  }
 }

 if (ret != ((void*)0))
 {
  return ret;
 }

 return ret;
}
