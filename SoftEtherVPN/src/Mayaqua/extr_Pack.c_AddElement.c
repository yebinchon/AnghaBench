
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ num_value; int JsonHint_GroupName; int name; } ;
struct TYPE_8__ {int elements; int CurrentJsonHint_GroupName; } ;
typedef TYPE_1__ PACK ;
typedef TYPE_2__ ELEMENT ;


 int Add (int ,TYPE_2__*) ;
 int FreeElement (TYPE_2__*) ;
 scalar_t__ GetElement (TYPE_1__*,int ,int ) ;
 int INFINITE ;
 scalar_t__ LIST_NUM (int ) ;
 scalar_t__ MAX_ELEMENT_NUM ;
 int StrCpy (int ,int,int ) ;

bool AddElement(PACK *p, ELEMENT *e)
{

 if (p == ((void*)0) || e == ((void*)0))
 {
  return 0;
 }


 if (LIST_NUM(p->elements) >= MAX_ELEMENT_NUM)
 {

  FreeElement(e);
  return 0;
 }


 if (GetElement(p, e->name, INFINITE))
 {

  FreeElement(e);
  return 0;
 }

 if (e->num_value == 0)
 {

  FreeElement(e);
  return 0;
 }


 StrCpy(e->JsonHint_GroupName, sizeof(e->JsonHint_GroupName), p->CurrentJsonHint_GroupName);


 Add(p->elements, e);
 return 1;
}
