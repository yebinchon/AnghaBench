
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ type; int name; } ;
struct TYPE_7__ {int elements; } ;
typedef TYPE_1__ PACK ;
typedef TYPE_2__ ELEMENT ;


 scalar_t__ INFINITE ;
 TYPE_2__* Search (int ,TYPE_2__*) ;
 int StrCpy (int ,int,char*) ;

ELEMENT *GetElement(PACK *p, char *name, UINT type)
{
 ELEMENT t;
 ELEMENT *e;

 if (p == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }


 StrCpy(t.name, sizeof(t.name), name);
 e = Search(p->elements, &t);

 if (e == ((void*)0))
 {
  return ((void*)0);
 }


 if (type != INFINITE)
 {
  if (e->type != type)
  {
   return ((void*)0);
  }
 }

 return e;
}
