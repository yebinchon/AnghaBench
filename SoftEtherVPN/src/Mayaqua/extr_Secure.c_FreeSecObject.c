
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Name; } ;
typedef TYPE_1__ SEC_OBJ ;


 int Free (TYPE_1__*) ;

void FreeSecObject(SEC_OBJ *obj)
{

 if (obj == ((void*)0))
 {
  return;
 }

 Free(obj->Name);
 Free(obj);
}
