
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int num_value; } ;
typedef int PACK ;
typedef TYPE_1__ ELEMENT ;


 TYPE_1__* GetElement (int *,char*,int ) ;
 int INFINITE ;

UINT PackGetIndexCount(PACK *p, char *name)
{
 ELEMENT *e;

 if (p == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 e = GetElement(p, name, INFINITE);
 if (e == ((void*)0))
 {
  return 0;
 }

 return e->num_value;
}
