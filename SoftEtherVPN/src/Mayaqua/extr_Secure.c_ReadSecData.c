
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int SessionCreated; int Error; } ;
typedef int SEC_OBJ ;
typedef TYPE_1__ SECURE ;


 int * FindSecObject (TYPE_1__*,char*,int ) ;
 int FreeSecObject (int *) ;
 int ReadSecDataFromObject (TYPE_1__*,int *,void*,int) ;
 int SEC_DATA ;
 int SEC_ERROR_NO_SESSION ;

int ReadSecData(SECURE *sec, char *name, void *data, UINT size)
{
 UINT ret = 0;
 SEC_OBJ *obj;

 if (sec == ((void*)0) || name == ((void*)0) || data == ((void*)0))
 {
  return 0;
 }
 if (sec->SessionCreated == 0)
 {
  sec->Error = SEC_ERROR_NO_SESSION;
  return 0;
 }


 obj = FindSecObject(sec, name, SEC_DATA);
 if (obj == ((void*)0))
 {

  return 0;
 }


 ret = ReadSecDataFromObject(sec, obj, data, size);

 FreeSecObject(obj);

 return ret;
}
