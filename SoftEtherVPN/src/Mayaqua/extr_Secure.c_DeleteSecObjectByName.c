
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int SessionCreated; int Error; } ;
typedef int SEC_OBJ ;
typedef TYPE_1__ SECURE ;


 int DeleteSecObject (TYPE_1__*,int *) ;
 int * FindSecObject (TYPE_1__*,char*,int ) ;
 int FreeSecObject (int *) ;
 int SEC_ERROR_BAD_PARAMETER ;
 int SEC_ERROR_NO_SESSION ;

bool DeleteSecObjectByName(SECURE *sec, char *name, UINT type)
{
 bool ret;
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


 ret = DeleteSecObject(sec, obj);


 FreeSecObject(obj);

 return ret;
}
