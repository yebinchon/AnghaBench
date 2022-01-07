
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_12__ {int CapsList; } ;
struct TYPE_11__ {scalar_t__ type; int num_value; TYPE_1__** values; scalar_t__ name; } ;
struct TYPE_10__ {int elements; } ;
struct TYPE_9__ {int IntValue; } ;
typedef TYPE_2__ PACK ;
typedef TYPE_3__ ELEMENT ;
typedef TYPE_4__ CAPSLIST ;
typedef int CAPS ;


 int CompareCaps ;
 int Insert (int ,int *) ;
 TYPE_3__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int * NewCaps (scalar_t__,int ) ;
 int NewListFast (int ) ;
 scalar_t__ StartWith (scalar_t__,char*) ;
 scalar_t__ VALUE_INT ;
 int Zero (TYPE_4__*,int) ;

void InRpcCapsList(CAPSLIST *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(CAPSLIST));
 t->CapsList = NewListFast(CompareCaps);

 for (i = 0;i < LIST_NUM(p->elements);i++)
 {
  ELEMENT *e = LIST_DATA(p->elements, i);

  if (StartWith(e->name, "caps_") && e->type == VALUE_INT && e->num_value == 1)
  {
   CAPS *c = NewCaps(e->name + 5, e->values[0]->IntValue);
   Insert(t->CapsList, c);
  }
 }
}
