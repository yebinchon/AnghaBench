
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sorted; int * cmp; int num_item; int p; } ;
typedef TYPE_1__ LIST ;


 int KS_INC (int ) ;
 int KS_SORT_COUNT ;
 int qsort (int ,int ,int,int (*) (void const*,void const*)) ;

void Sort(LIST *o)
{

 if (o == ((void*)0) || o->cmp == ((void*)0))
 {
  return;
 }

 qsort(o->p, o->num_item, sizeof(void *), (int(*)(const void *, const void *))o->cmp);
 o->sorted = 1;


 KS_INC(KS_SORT_COUNT);
}
