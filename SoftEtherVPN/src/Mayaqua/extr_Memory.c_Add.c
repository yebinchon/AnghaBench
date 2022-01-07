
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {size_t num_item; size_t num_reserved; int sorted; void** p; } ;
typedef TYPE_1__ LIST ;


 int KS_INC (int ) ;
 int KS_INSERT_COUNT ;
 void** ReAlloc (void**,int) ;

void Add(LIST *o, void *p)
{
 UINT i;

 if (o == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 i = o->num_item;
 o->num_item++;

 if (o->num_item > o->num_reserved)
 {
  o->num_reserved = o->num_reserved * 2;
  o->p = ReAlloc(o->p, sizeof(void *) * o->num_reserved);
 }

 o->p[i] = p;
 o->sorted = 0;


 KS_INC(KS_INSERT_COUNT);
}
