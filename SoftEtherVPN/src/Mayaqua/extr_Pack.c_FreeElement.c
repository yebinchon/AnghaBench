
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t num_value; struct TYPE_5__* values; int type; } ;
typedef TYPE_1__ ELEMENT ;


 int Free (TYPE_1__*) ;
 int FreeValue (TYPE_1__,int ) ;

void FreeElement(ELEMENT *e)
{
 UINT i;

 if (e == ((void*)0))
 {
  return;
 }

 for (i = 0;i < e->num_value;i++)
 {
  FreeValue(e->values[i], e->type);
 }
 Free(e->values);

 Free(e);
}
