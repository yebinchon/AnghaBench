
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int SessionCreated; int Error; } ;
typedef int SEC_OBJ ;
typedef TYPE_1__ SECURE ;


 int * FindSecObject (TYPE_1__*,char*,int ) ;
 int FreeSecObject (int *) ;
 int SEC_ERROR_BAD_PARAMETER ;
 int SEC_ERROR_NO_SESSION ;

bool CheckSecObject(SECURE *sec, char *name, UINT type)
{
 SEC_OBJ *obj;

 if (sec == ((void*)0))
 {
  return 0;
 }
 if (name == ((void*)0))
 {
  sec->Error = SEC_ERROR_BAD_PARAMETER;
  return 0;
 }
 if (sec->SessionCreated == 0)
 {
  sec->Error = SEC_ERROR_NO_SESSION;
  return 0;
 }

 obj = FindSecObject(sec, name, type);

 if (obj == ((void*)0))
 {
  return 0;
 }
 else
 {
  FreeSecObject(obj);
  return 1;
 }
}
