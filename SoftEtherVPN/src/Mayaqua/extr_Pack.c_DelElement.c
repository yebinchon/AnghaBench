
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int elements; } ;
typedef TYPE_1__ PACK ;
typedef int ELEMENT ;


 int Delete (int ,int *) ;
 int FreeElement (int *) ;
 int * GetElement (TYPE_1__*,char*,int ) ;
 int INFINITE ;

void DelElement(PACK *p, char *name)
{
 ELEMENT *e;

 if (p == ((void*)0) || name == ((void*)0))
 {
  return;
 }

 e = GetElement(p, name, INFINITE);
 if (e != ((void*)0))
 {
  Delete(p->elements, e);

  FreeElement(e);
 }
}
