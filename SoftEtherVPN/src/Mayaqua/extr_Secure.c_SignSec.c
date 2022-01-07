
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int Error; } ;
typedef int SEC_OBJ ;
typedef TYPE_1__ SECURE ;


 int * FindSecObject (TYPE_1__*,char*,int ) ;
 int FreeSecObject (int *) ;
 int SEC_ERROR_BAD_PARAMETER ;
 int SEC_K ;
 int SignSecByObject (TYPE_1__*,int *,void*,void*,int) ;

bool SignSec(SECURE *sec, char *name, void *dst, void *src, UINT size)
{
 SEC_OBJ *obj;
 UINT ret;

 if (sec == ((void*)0))
 {
  return 0;
 }
 if (name == ((void*)0) || dst == ((void*)0) || src == ((void*)0))
 {
  sec->Error = SEC_ERROR_BAD_PARAMETER;
  return 0;
 }

 obj = FindSecObject(sec, name, SEC_K);
 if (obj == ((void*)0))
 {
  return 0;
 }

 ret = SignSecByObject(sec, obj, dst, src, size);

 FreeSecObject(obj);

 return ret;
}
