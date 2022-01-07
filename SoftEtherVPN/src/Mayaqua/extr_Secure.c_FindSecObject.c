
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_10__ {int SessionCreated; int Error; } ;
struct TYPE_9__ {scalar_t__ Type; int Name; } ;
typedef TYPE_1__ SEC_OBJ ;
typedef TYPE_2__ SECURE ;
typedef int LIST ;


 TYPE_1__* CloneSecObject (TYPE_1__*) ;
 int * EnumSecObject (TYPE_2__*) ;
 int FreeEnumSecObject (int *) ;
 scalar_t__ INFINITE ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int SEC_ERROR_BAD_PARAMETER ;
 int SEC_ERROR_NO_SESSION ;
 int SEC_ERROR_OBJ_NOT_FOUND ;
 scalar_t__ StrCmpi (int ,char*) ;

SEC_OBJ *FindSecObject(SECURE *sec, char *name, UINT type)
{
 LIST *o;
 UINT i;
 SEC_OBJ *ret = ((void*)0);

 if (sec == ((void*)0))
 {
  return ((void*)0);
 }
 if (name == ((void*)0))
 {
  sec->Error = SEC_ERROR_BAD_PARAMETER;
  return ((void*)0);
 }
 if (sec->SessionCreated == 0)
 {
  sec->Error = SEC_ERROR_NO_SESSION;
  return 0;
 }


 o = EnumSecObject(sec);
 if (o == ((void*)0))
 {
  return ((void*)0);
 }
 for (i = 0;i < LIST_NUM(o);i++)
 {
  SEC_OBJ *obj = LIST_DATA(o, i);

  if (obj->Type == type || type == INFINITE)
  {
   if (StrCmpi(obj->Name, name) == 0)
   {
    ret = CloneSecObject(obj);
    break;
   }
  }
 }
 FreeEnumSecObject(o);

 if (ret == ((void*)0))
 {
  sec->Error = SEC_ERROR_OBJ_NOT_FOUND;
 }

 return ret;
}
