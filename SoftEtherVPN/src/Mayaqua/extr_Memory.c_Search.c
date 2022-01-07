
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sorted; int * cmp; int num_item; int p; } ;
typedef TYPE_1__ LIST ;


 int KS_INC (int ) ;
 int KS_SEARCH_COUNT ;
 int Sort (TYPE_1__*) ;
 scalar_t__ bsearch (void**,int ,int ,int,int (*) (void const*,void const*)) ;

void *Search(LIST *o, void *target)
{
 void **ret;

 if (o == ((void*)0) || target == ((void*)0))
 {
  return ((void*)0);
 }
 if (o->cmp == ((void*)0))
 {
  return ((void*)0);
 }


 if (o->sorted == 0)
 {

  Sort(o);
 }

 ret = (void **)bsearch(&target, o->p, o->num_item, sizeof(void *),
  (int(*)(const void *, const void *))o->cmp);


 KS_INC(KS_SEARCH_COUNT);

 if (ret != ((void*)0))
 {
  return *ret;
 }
 else
 {
  return ((void*)0);
 }
}
