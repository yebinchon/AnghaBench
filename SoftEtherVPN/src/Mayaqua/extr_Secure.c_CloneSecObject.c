
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Type; int Private; int Object; int Name; } ;
typedef TYPE_1__ SEC_OBJ ;


 int CopyStr (int ) ;
 TYPE_1__* ZeroMalloc (int) ;

SEC_OBJ *CloneSecObject(SEC_OBJ *obj)
{
 SEC_OBJ *ret;

 if (obj == ((void*)0))
 {
  return ((void*)0);
 }

 ret = ZeroMalloc(sizeof(SEC_OBJ));
 ret->Name = CopyStr(obj->Name);
 ret->Object = obj->Object;
 ret->Private = obj->Private;
 ret->Type = obj->Type;

 return ret;
}
