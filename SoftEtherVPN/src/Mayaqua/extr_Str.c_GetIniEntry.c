
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int Key; } ;
typedef int LIST ;
typedef TYPE_1__ INI_ENTRY ;


 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 scalar_t__ StrCmpi (int ,char*) ;

INI_ENTRY *GetIniEntry(LIST *o, char *key)
{
 UINT i;

 if (o == ((void*)0) || key == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  INI_ENTRY *e = LIST_DATA(o, i);

  if (StrCmpi(e->Key, key) == 0)
  {
   return e;
  }
 }

 return ((void*)0);
}
