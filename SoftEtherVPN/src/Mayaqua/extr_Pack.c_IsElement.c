
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int name; } ;
struct TYPE_6__ {int elements; } ;
typedef TYPE_1__ PACK ;
typedef TYPE_2__ ELEMENT ;


 TYPE_2__* Search (int ,TYPE_2__*) ;
 int StrCpy (int ,int,char*) ;

bool IsElement(PACK *p, char *name)
{
 ELEMENT t;
 ELEMENT *e;

 if (p == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }


 StrCpy(t.name, sizeof(t.name), name);
 e = Search(p->elements, &t);

 if (e == ((void*)0))
 {
  return 0;
 }

 return 1;
}
