
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int * EnumCache; } ;
struct TYPE_7__ {scalar_t__ Type; int Name; } ;
typedef TYPE_1__ SEC_OBJ ;
typedef TYPE_2__ SECURE ;


 int Delete (int *,TYPE_1__*) ;
 int FreeSecObject (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 scalar_t__ StrCmpi (int ,char*) ;

void DeleteSecObjFromEnumCache(SECURE *sec, char *name, UINT type)
{
 UINT i;

 if (sec == ((void*)0) || name == ((void*)0) || sec->EnumCache == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(sec->EnumCache);i++)
 {
  SEC_OBJ *obj = LIST_DATA(sec->EnumCache, i);

  if (StrCmpi(obj->Name, name) == 0)
  {
   if (obj->Type == type)
   {
    Delete(sec->EnumCache, obj);
    FreeSecObject(obj);
    break;
   }
  }
 }
}
